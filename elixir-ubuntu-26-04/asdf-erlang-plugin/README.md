# asdf-erlang-prebuilt-ubuntu-26.04

Vendored asdf plugin that installs Erlang/OTP from the prebuilt
[hexpm/bob](https://builds.hex.pm/builds/otp/ubuntu-26.04/) builds for
Ubuntu 26.04.

It is a copy of
[michallepicki/asdf-erlang-prebuilt-ubuntu-24.04](https://github.com/michallepicki/asdf-erlang-prebuilt-ubuntu-24.04)
(MIT, see LICENSE) with the build URL pointed at `ubuntu-26.04`, since no
upstream plugin exists for that release yet. The download is also made to
fail loudly instead of continuing on to unpack a file that was never
written.

Replace this with the upstream plugin once it covers Ubuntu 26.04.
