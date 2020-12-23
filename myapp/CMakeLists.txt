define_app(
    myapp
    #SRC_DIR
    SOURCES
        main.cpp
    #PRIV_HEADERS
    #API_HEADERS
    #API_DIR
    #INSTALL_DIR
    LIBS
        demo_infra::mylib1
        demo_infra::mylib2
    #SYS_LIBS
)

