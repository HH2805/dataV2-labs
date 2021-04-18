create temporary table TMP_AdvRoyalt
select titleauthor.au_id, titles.title_id, titles.advance * titleauthor.royaltyper/100 as Advance, titles.price * sales.qty * titles.royalty / 100 * titleauthor.royaltyper / 100 as Royalties
from titles
left join titleauthor on titles.title_id = titleauthor.title_id
left join sales on titles.title_id = sales.title_id
order by titleauthor.au_id;

select au_id, title_id, Advance, sum(Royalties)
from TMP_AdvRoyalt
group by au_id, title_id
order by au_id
;

select au_id, title_id, Advance, sum(Royalties), sum(Royalties)+Advance as Total_Profit
from TMP_AdvRoyalt
group by title_id
order by Total_Profit DESC
limit 3
;