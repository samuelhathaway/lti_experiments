To use:

1. Set these env vars in the shell you're going to run `vagrant up` from:

```
export CANVAS_LMS_ADMIN_EMAIL="your email address"
export CANVAS_LMS_ADMIN_PASSWORD="some admin password"
export CANVAS_LMS_STATS_COLLECTION="opt_in"
export CANVAS_LMS_ACCOUNT_NAME="Your Institution"
```

2. Run `vagrant up`.

3. Get a coffee.

4. Go to `http://localhost:3000` in your browser and log in with the email and password you gave in step 1.
