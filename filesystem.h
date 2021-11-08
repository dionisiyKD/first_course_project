#ifndef FILESYSTEM_H
#define FILESYSTEM_H

#include <QFile>
#include "human.h"
#include "environment.h"


class FileSystem
{
protected:
     QFile file;
     QString valueForParsing;
     QString filename;

public:

     int Rounds;


    FileSystem()
    {
       valueForParsing = "";
        QString filename = "";
    }
    void writeToFile();
    void readFromFile();
    void renameFile(QString);
    void parseFile();
    void makePreset();

    void loadPreset(); // empty
    void loadRound(); // empty
    void openExistFile(); //


    QString getValueForParsing()
    {
        return valueForParsing;
    }
    void setValueForParsing(QString str)
    {
        valueForParsing = str;
    }
    QString getFileName()
    {
        return filename;
    }
     void  setFileName(QString str)
    {
        filename  = str;
    }

    FileSystem(FileSystem *file);

~FileSystem()
    {
    }

};



class JSONFormat : public FileSystem
{
  //  environment  environmentData;
  //  QString filename = "G:\\GitHubProject\\first_course_project\\Preset1.json";
   // QString filename = "Preset1.json";
    QFile file;
public:

    JSONFormat();

    void writeToFile();
    void readFromFile();
    void parseFile();

    void renameFile(QString  str)
    {
         file.setFileName(str + ".json");
    }
};



class CSVFormat  : public FileSystem
{
  //  QString filename = "ResultTable.csv";
    QFile file;
   // environment  environmentData;
    list lst;

public:

    CSVFormat();

     void writeToFile();
     void readFromFile();
     void parseFile();

     void renameFile(QString  str)
     {
          file.setFileName(str + ".csv");
     }

};


#endif // FILESYSTEM_H
