-- Q-1) Show members who borrowed more than 3 books.
select br.member_id, count(*) as total_book_borrowed from borrow_records br
join books b on b.book_id = br.book_id
group by br.member_id
having count(*) > 3


-- Q-2) List books that were never borrowed.
select b.book_id, b.title from books b
left join borrow_records br on br.book_id = b.book_id
where br.book_id is null


-- Q-3) Find the most borrowed book title.
select top 1 b.book_id, b.title, count(*) as total_book_borrowed from borrow_records br
join books b on b.book_id = br.book_id
group by b.book_id, b.title
order by total_book_borrowed desc


-- Q-4) List overdue books.
select br.book_id, br.member_id, br.borrow_date, br.due_date from borrow_records br
where (br.return_date is not null and br.return_date > due_date) 
      or (br.return_date is null and br.due_date < cast(getdate() as date))


-- Q-5) Count total books in each genre.
select genre, count(*) as total_books from books
group by genre
order by total_books desc


-- Q-6) Find top 5 members by number of borrowings.
select top 5 m.member_id, m.name, count(br.borrow_id) as number_of_borrowings from members m
join borrow_records br on br.member_id = m.member_id
group by m.member_id, m.name
order by number_of_borrowings desc


-- Q-7) Find members who borrowed a book and returned it on the same day.
select m.member_id, m.name from members m
join borrow_records br on br.member_id = m.member_id
where br.borrow_date = br.return_date


-- Q-8) Show the average borrow duration for each genre.
select b.genre, avg(datediff(day, br.borrow_date, br.return_date)) as average_borrow_duration from books b
left join borrow_records br on br.book_id = b.book_id
where br.return_date is not null
group by b.genre
order by average_borrow_duration


-- Q-9) Find books published before year 2000 that are still being borrowed.
select distinct b.book_id, b.title, b.published_year from books b
join borrow_records br on b.book_id = br.book_id
where b.published_year < 2000 and br.return_date is null 


-- Q-10) Count books returned late by each member.
select m.member_id, m.name, count(*) AS late_returns from members m
join borrow_records br on m.member_id = br.member_id
where br.return_date is not null and br.return_date > br.due_date
group by m.member_id, m.name


-- Q-11) Find total fines collected this year.
select datename(year, br.due_date) as year, sum(f.amount) as total_fine_collection from fines f
join borrow_records br on br.borrow_id = f.borrow_id
group by datename(year, br.due_date)
having datename(year, br.due_date) = 2025


-- Q-12) Show unpaid fines with member name and book title.
select m.name, b.title, f.fine_id, f.amount from members m
join borrow_records br on br.member_id = m.member_id
join books b on b.book_id = br.book_id
join fines f on f.borrow_id = br.borrow_id
where f.is_paid = 0


-- Q-13) Find members who joined this year but have not borrowed any book.

-- example: 1
select m.* from members m
left join borrow_records br on br.member_id = m.member_id
where m.join_date between '2025-01-01' and '2025-12-31' and br.member_id is null 

-- example: 2
select m.member_id, m.name, m.join_date from members m
left join borrow_records b on m.member_id = b.member_id
where year(m.join_date) = year(getdate()) and b.member_id is null


-- Q-14) List genres borrowed most by members aged under 25.
select b.genre, count(*) as borrow_count from borrow_records br
join members m on m.member_id = br.member_id
join books b on b.book_id = br.book_id
where m.age < 25
group by b.genre
order by borrow_count desc


-- Q-15) Show the number of borrowings month by month for the last year.

-- Example: 1
select datename(month, borrow_date) as month, count(borrow_id) as total_borrowing from borrow_records
where borrow_date >= dateadd(year, -1, cast(getdate() as date))
group by datename(month, borrow_date)
order by total_borrowing desc

-- Example: 2
select format(borrow_date, 'yyyy-MM') as month, count(*) as total_borrowings from borrow_records
where borrow_date >= dateadd(year, -1, cast(getdate() as date))
group by format(borrow_date, 'yyyy-MM')
order by month


-- Q-16) Find authors whose books have never been borrowed.
select b.author from books b
left join borrow_records br on br.book_id = b.book_id
where br.book_id is null   -- no borrow record


-- Q-17) Count how many times each book has been borrowed.
select b.book_id, b.title, b.author, b.genre, count(br.borrow_id) as total_book_borrowed from books b
join borrow_records br on br.book_id = b.book_id
group by b.book_id, b.title, b.author, b.genre
order by total_book_borrowed desc


-- Q-18) Show members who returned all books on time.
select br.member_id, m.name, m.age, m.city from members m
join borrow_records br on br.member_id = m.member_id
group by br.member_id, m.name, m.age, m.city
having sum(
   case 
      when return_date > due_date then 1 
      else 0 
   end
) = 0


-- Q-19) List members who borrowed the same book multiple times.
SELECT member_id, book_id, count(book_id) as times_borrowed from borrow_records
group by member_id, book_id
having count(book_id) > 1


-- Q-20) Show the oldest published book that was borrowed in the last month.
select b.book_id, b.title, b.published_year from books b
join borrow_records br on br.book_id = b.book_id
where br.borrow_date >= dateadd(month, -1, cast(getdate() as date))
order by b.published_year