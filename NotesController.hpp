/*
 * File:    NotesController.cpp
 * Author:  Spiros
 *
 * Created on Jun 10, 2018, 5:28 PM
 */

#ifndef NOTESCONTROLLER_HPP
#define NOTESCONTROLLER_HPP

#include <QObject>
#include <QVector>

class NotesController : public QObject
{
    Q_OBJECT
public:
    explicit NotesController();

public slots:
    /**
     * @brief changeBaseFrequency is a function the changes the base frequency and the rest frequencies
     * @param newBaseFrequency is the new base base frequency
     */
    void changeBaseFrequency(quint32 newBaseFrequency);

    /**
     * @brief getNoteNames is a function that returns the names of the notes
     * @return the names of the notes
     */
    QVector<QString> getNoteNames();

    /**
     * @brief getNoteFrequencies is a function that returns the frequencies of the notes
     * @return the frequencies of the notes
     */
    QVector<qreal> getNoteFrequencies();

    /**
     * @brief getBaseFrequency is a function that returns the base frequency
     * @return the base frequency
     */
    quint16 getBaseFrequency();

private slots:
    /**
     * @brief readNotes is a function that reads the notes
     */
    void readNotes();

private:
    qreal baseFrequency;
    QVector<QString> noteNames;
    QVector<qreal> noteFrequencies;
};

#endif // NOTESCONTROLLER_HPP
