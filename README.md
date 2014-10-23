1. Install VirtualBox.

2. Export these env vars in your shell. You only need them during Vagrant provisioning.

    ```
    export CANVAS_LMS_ADMIN_EMAIL="your email address"
    export CANVAS_LMS_ADMIN_PASSWORD="some admin password"
    export CANVAS_LMS_STATS_COLLECTION="opt_in" # or "opt_out" or "anonymous"
    export CANVAS_LMS_ACCOUNT_NAME="Your Institution"
    ```

3. Bring up the Vagrant box:

    ```
    vagrant up
    ```

4. Get a coffee. This will take a while.

5. Visit http://localhost:3000 in your browser. Log in with `$CANVAS_LMS_ADMIN_EMAIL` and `$CANVAS_LMS_ADMIN_PASSWORD`.
