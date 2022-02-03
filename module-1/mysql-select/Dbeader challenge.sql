SELECT au.au_id AS 'AUTHOR_ID', au.au_lname AS 'LAST NAME', au.au_fname AS 'FIRST NAME', ISNULL(SUM(s.qty),0) AS 'TOTAL'
FROM authors AS au
 	JOIN titleauthor AS ta ON au.au_id = ta.au_id
    JOIN sales as s ON ta.title_id = s.title_id
GROUP BY au.au_id, au.au_lname, au.au_fname
ORDER BY TOTAL  DESC