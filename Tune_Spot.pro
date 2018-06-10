CONFIG += c++11
QT += quick
QT += widgets
QT += multimedia
android : QT += androidextras

# The following define makes your compiler emit warnings if you use
# any feature of Qt which as been marked deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

HEADERS = \
    Recorder.h \
    Configurator.h

SOURCES += \
    main.cpp \
    Recorder.cpp \
    Configurator.cpp

RESOURCES += qml.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Additional import path used to resolve QML modules just for Qt Quick Designer
QML_DESIGNER_IMPORT_PATH =

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

DISTFILES += \
    data/fonts/OpenSans-Bold.ttf \
    data/fonts/OpenSans-BoldItalic.ttf \
    data/fonts/OpenSans-ExtraBold.ttf \
    data/fonts/OpenSans-ExtraBoldItalic.ttf \
    data/fonts/OpenSans-Italic.ttf \
    data/fonts/OpenSans-Light.ttf \
    data/fonts/OpenSans-LightItalic.ttf \
    data/fonts/OpenSans-Regular.ttf \
    data/fonts/OpenSans-SemiBold.ttf \
    data/fonts/OpenSans-SemiBoldItalic.ttf\
    data/notes/baseFrequency.txt \
    data/notes/frequenciesOfNotes.txt \
    data/notes/namesOfNotes.txt
