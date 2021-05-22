use publications;

Select authors.au_id, au_lname, au_fname, titles.title, publishers.pub_name
from authors
left join titleauthor on authors.au_id = titleauthor.au_id
left join titles on titleauthor.title_id = titles.title_id
left join publishers on titles.pub_id = publishers.pub_id;

Select authors.au_id, au_lname, au_fname, count(titles.title), publishers.pub_name
from authors
left join titleauthor on authors.au_id = titleauthor.au_id
left join titles on titleauthor.title_id = titles.title_id
left join publishers on titles.pub_id = publishers.pub_id
group by au_id
order by count(titles.title) desc;