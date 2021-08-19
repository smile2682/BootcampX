const { Pool } = require('pg');

const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});



const cohortName = process.argv[2]||'JUL02';
pool.query(`
SELECT DISTINCT teachers.name as teacher, cohorts.name as cohort
FROM teachers
JOIN assistance_requests on teacher_id = teachers.id
JOIN students on student_id = students.id
Join cohorts on cohort_id = cohorts.id
WHERE cohorts.name = $1`, [`${cohortName}`])
.then(res => {
  res.rows.forEach(user => {
    console.log(`${cohortName} : ${user. teacher}`);
  })
})
.catch(err => console.error('query error', err.stack));