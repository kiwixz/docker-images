FROM kiwixz/arch

ADD "https://github.com/Microsoft/vcpkg/archive/master.zip" "/tmp/vcpkg.zip"

ADD "bootstrap.sh" "/tmp/bootstrap.sh"
RUN bash "/tmp/bootstrap.sh"

RUN rm -rf  \
    "/tmp/*"  \
    "/var/cache/pacman/pkg/*"  \
    "/var/lib/pacman/sync/*"  \
    "/var/tmp/*"
