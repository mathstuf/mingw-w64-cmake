ExternalProject_Add(game-music-emu
    DEPENDS gcc
    SVN_REPOSITORY "http://game-music-emu.googlecode.com/svn/trunk/"
    UPDATE_COMMAND ""
    PATCH_COMMAND patch -p0 < ${CMAKE_CURRENT_SOURCE_DIR}/game-music-emu-0001-static.patch
        COMMAND patch -p0 < ${CMAKE_CURRENT_SOURCE_DIR}/game-music-emu-0002-Add-Libs.private.patch
    CMAKE_ARGS -DCMAKE_INSTALL_PREFIX=${MINGW_INSTALL_PREFIX} -DCMAKE_TOOLCHAIN_FILE=${TOOLCHAIN_FILE} -DLIBTYPE=STATIC
    BUILD_COMMAND ${CMAKE_MAKE_PROGRAM}
    INSTALL_COMMAND ${CMAKE_MAKE_PROGRAM} install
    LOG_DOWNLOAD 1 LOG_UPDATE 1 LOG_CONFIGURE 1 LOG_BUILD 1 LOG_INSTALL 1
)

force_rebuild_svn(game-music-emu)
