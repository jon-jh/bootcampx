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

// QUERIES (converted to parameterized query)

const cohortsName = process.argv[2] || 'JUL02';
const limit = process.argv[3] || 5;

pool.query(`
  select students.id as student_id,
  students.name as name,
  cohorts.name as cohort
  from students
  join cohorts on cohorts.id = cohort_id
  where cohorts.name like $1
  limit $2;
  `, [cohortsName, limit])
  
  .then((res) => {
    res.rows.forEach((user) => {
      console.log(`${user.name} [ID${user.student_id}] was in the ${user.cohort} cohort.`
      );
    });

  })
  .catch((err) => console.error('error!', err.stack));