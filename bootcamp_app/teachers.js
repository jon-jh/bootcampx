// CONNECT TO DATABASE

const { Pool } = require('pg');

const pool = new Pool({
  user: 'development',
  password: 'development',
  host: 'localhost',
  database: 'bootcampx'
});

// LOG RESULTS

pool.connect()
  .then(client => {
    console.log('Connection success');
    client.release();
  })
  .catch(err => {
    console.log('Not connected', err.stack);
  });

// QUERIES but adding proccess.argv[2] for user input such as node teachers.js FEB12

// Separate the user input into parameterized queries so that it can't be used to inject code into the program. Basically this means send the user input to an array and then read it from there, but do not run it as code.

const cohortName = process.argv[2] || 'JUL02';

pool.query(`
  select distinct
  teachers.name as teacher, cohorts.name as cohort
  from teachers
  join assistance_requests on teacher_id = teachers.id
  join students on student_id = students.id
  join cohorts on cohort_id = cohorts.id
  where cohorts.name = $1
  order by teacher;
`, [cohortName])
// The part with user input simply becomes $1 and we move it into its own variable (we add it in [] as cohortName, this is recognized as $1)

//   where cohorts.name = '${process.argv[2] || 'JUL02'}'
//   order by teacher;
// `)

// Since there is USER INPUT here, we need to take it out and replace it with a variable instead. Doing this is enough for PostgreSQL to safely insert that user input and know not to run it as code.

  .then(res => {
    res.rows.forEach(row => {
      console.log(`${row.cohort}: ${row.teacher}`
      );
    });

  })
  .catch((err) => console.error('error!', err.stack));


