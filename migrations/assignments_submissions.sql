create table assignments(
  id serial primary key not null,
  name varchar(255),
  content text,
  day integer,
  chapter integer,
  duration integer
);

create table assignment_submissions(
  id serial primary key not null,
  assignment_id integer references assignments(id) on delete cascade,
  student_id integer references students(id) on delete cascade,
  duration integer,
  submission_date date
);
