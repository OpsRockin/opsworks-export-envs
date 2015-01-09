opsworks-export-envs Cookbook
=============================

> This cookbook only works on AWS OpsWorks.

Dump environment variables which set in Apps for shell-init.


Usage
----

Add `opsworks-export-envs::default` to Deploy event.
All environment variables are dumped to `/home/deploy/shellinit-${app_name}.sh` at deployment.

You can use it by dot command or source.

```
. /home/deploy/shellinit-${app_name}.sh

or 

source /home/deploy/shellinit-${app_name}.sh
```


### Barksfile

```
source "https://supermarket.chef.io"

cookbook 'opsworks-export-envs', git: 'https://github.com/OpsRockin/opsworks-export-envs.git'
```

Contributing
------------

1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------

MIT

