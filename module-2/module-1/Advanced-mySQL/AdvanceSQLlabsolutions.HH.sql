use publications;

# Step 1
select titleauthor.au_id as AuthorID, titles.title_id as TitleID, (titles.advance * titleauthor.royaltyper/100) as Advance_per_title, (titles.price * sales.qty * titles.royalty / 100 * titleauthor.royaltyper / 100) as Royalties_on_Sales_per_Title
from titles
inner join titleauthor on titles.title_id = titleauthor.title_id
inner join sales on titles.title_id = sales.title_id
order by AuthorID;

# Step 2
select AuthorID, TitleID, Advance_per_title, sum(Royalties_on_Sales_per_Title)
from(
select titleauthor.au_id as AuthorID, titles.title_id as TitleID, (titles.advance * titleauthor.royaltyper/100) as Advance_per_title, (titles.price * sales.qty * titles.royalty / 100 * titleauthor.royaltyper / 100) as Royalties_on_Sales_per_Title
from titles
inner join titleauthor on titles.title_id = titleauthor.title_id
inner join sales on titles.title_id = sales.title_id
order by AuthorID) SUBQUERY
group by AuthorID, TitleID
;

# Step 3
select AuthorID, TitleID, Advance_per_title as Total_Advance_per_Author, sum(Royalties_on_sales_per_Title) as Total_Royalties_per_Author, sum(Royalties_on_sales_per_title)+Advance_per_title as Total_Profit_per_Author
from(
select titleauthor.au_id as AuthorID, titles.title_id as TitleID, (titles.advance * titleauthor.royaltyper/100) as Advance_per_title, (titles.price * sales.qty * titles.royalty / 100 * titleauthor.royaltyper / 100) as Royalties_on_Sales_per_Title
from titles
inner join titleauthor on titles.title_id = titleauthor.title_id
inner join sales on titles.title_id = sales.title_id
order by AuthorID) SUBQUERY
group by TitleID
order by Total_Profit_per_author desc
limit 3
;