1. Install VirtualBox.

2. Install Vagrant.

3. Export these env vars in your shell. You only need them during Vagrant provisioning.

    ```bash
    export CANVAS_LMS_ADMIN_EMAIL="your email address"
    export CANVAS_LMS_ADMIN_PASSWORD="some admin password"
    export CANVAS_LMS_STATS_COLLECTION="opt_in" # or "opt_out" or "anonymous"
    export CANVAS_LMS_ACCOUNT_NAME="Your Institution"
    ```

4. Bring up the Vagrant box:

    ```bash
    vagrant up
    ```

5. Get a coffee. This will take a while.

6. Visit http://localhost:3000 in your browser. Log in with `$CANVAS_LMS_ADMIN_EMAIL` and `$CANVAS_LMS_ADMIN_PASSWORD`.
