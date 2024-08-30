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
    console.log('Not connected', err.stack)
  });

// QUERIES but adding proccess.argv[2] for user input such as node teachers.js FEB12

pool.query(`
  select distinct
  teachers.name as teacher, cohorts.name as cohort
  from teachers
  join assistance_requests on teacher_id = teachers.id
  join students on student_id = students.id
  join cohorts on cohort_id = cohorts.id
  where cohorts.name = '${process.argv[2] || 'JUL02'}'
  order by teacher;
`)

  .then(res => {
    res.rows.forEach(row => {
      console.log(`${row.cohort}: ${row.teacher}`
      );
    })

  })
  .catch((err) => console.error('error!', err.stack));


