FROM "kiwixz/arch"

COPY "kiwixz_*" "/usr/local/bin/"
RUN chmod 755 /usr/local/bin/kiwixz_*  \
    && pacman --needed --noconfirm -Sy  \
        git  `# to clone vcpkg`  \
        curl  `# for vcpkg to download tools`  \
        tar gzip unzip  `# for vcpkg to extract tools`  \
        gcc  `# to compile vcpkg`  \
        perl  `# for shasum, for vcpkg to verify files`  \
        cmake make ninja  `# to install vcpkg libs`  \
    && git -C "/opt" clone "https://github.com/Microsoft/vcpkg.git"  \
    && /opt/vcpkg/bootstrap-vcpkg.sh -disableMetrics -useSystemBinaries  \
    && ln -s "/opt/vcpkg/vcpkg" "/usr/local/bin/"  \
    && chmod -R a+rw "/opt/vcpkg/vcpkg"  \
    && kiwixz_cleanup_vcpkg
