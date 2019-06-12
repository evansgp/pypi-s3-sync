# pypi-s3-sync

Creates a PyPi mirror containing the dependencies in [requirements.txt](requirements.txt).

Usage:

```bash
pip install python-pypi-mirror
# assume any required role or log in
MIRROR_BUCKET_NAME=your-pypi-mirror-bucket-name ./build.sh
```

Add the mirror to your system with one of:

```bash
# manually, each pip invocation
pip install --use-mirror https://$MIRROR_BUCKET_NAME.s3.$MIRROR_BUCKET_REGION.amazonaws.com/simple boto3

# via an env
PIP_HOST=https://$MIRROR_BUCKET_NAME.s3.$MIRROR_BUCKET_REGION.amazonaws.com/simple

# or in your pip config file ($HOME/.pip/pip.conf)
# see: https://pip.pypa.io/en/stable/reference/pip_config/
[[global]]
url = "https://$MIRROR_BUCKET_NAME.s3.$MIRROR_BUCKET_REGION.amazonaws.com/simple"
verify_ssl = true

```