# Finding A Good High School
A database of NYC high schools and information about them, designed to help parents and guardians find a high school that fits their needs.

Written for MariaDB v10.3.9.

## Run instructions

Clone the repo and from within it, open your MariaDB shell.
Then run:
```
source scripts/load.sql
source scripts/normalize.sql
```

To load the data as it is from the data sheets with some preprocessing, and then to normalize the data according to our database design.

Run
```
source scripts/queries.sql
```
to run some sample queries.