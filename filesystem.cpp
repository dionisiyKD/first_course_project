#include <QFile>
#include <QTextStream>
#include <QMessageBox>
#include <QJsonObject>
#include <QJsonDocument>
#include "filesystem.h"
#include "human.h"
#include "environment.h"
#include "InfroForFile.h"


 struct environmentPsyche TypeOfPsyche;

    JSONFormat::JSONFormat()
    {
       file.flush();
        filename = "Preset1.json";
        file.setFileName(filename);


       if (!file.open(QIODevice::ReadWrite | QIODevice::Append))
       {
           QMessageBox::information(0,"Fail! couldn't open file", file.errorString());
            return;
         //  QTextStream out(&file);
       }
       file.close();
    }

    void JSONFormat::writeToFile()
    {
        //file.setFileName(filename);
        if (!file.open(QIODevice::WriteOnly | QIODevice::Append))
        {
            QMessageBox::information(0,"Fail! couldn't open file", file.errorString());
             return;
        }
        else
        {

        file.open(QIODevice::WriteOnly | QIODevice::Append); //все верно, если файла нет, он будет создан
        QTextStream out(&file);

              out << "{" << '\n' << '"' << "rounds" << '"' << ':' << '"' << "value" << '"' << ',' << '\n'; //
              out <<  '"' << "Naive" << '"' << ':' << '"' <<TypeOfPsyche.Naive << '"' << ',' << '\n';
              out <<  '"' << "Distrustful" << '"' << ':' << '"' << TypeOfPsyche.Distrustful << '"' << ',' << '\n';
              out <<  '"' << "Simulator" << '"' << ':' << '"' <<TypeOfPsyche.Simulator << '"' << ',' << '\n';
              out <<  '"' << "Tricky" << '"' << ':' << '"' << TypeOfPsyche.Tricky << '"' << ',' << '\n';
              out <<  '"' << "Detective" << '"' << ':' << '"' << TypeOfPsyche.Detective << '"' << ',' << '\n';
              out <<  '"' << "Vindictive" << '"' << ':' << '"' << TypeOfPsyche.Vindictive << '"' << ',' << '\n';
              out <<  '"' << "Random" << '"' << ':' << '"' <<TypeOfPsyche.Random << '"' << ',' << '\n';
              out <<  '"' << "Persistent" << '"' << ':' << '"' << TypeOfPsyche.Persistent << '"' << ',' << '\n';
              out <<  '"' << "Forgiving" << '"' << ':' << '"' << TypeOfPsyche.Forgiving << '"' << ',' << '\n' << "}";



         file.close();
        }
    }

    void JSONFormat::readFromFile()
    {
        if (!file.open(QIODevice::ReadOnly))
        {
            QMessageBox::information(0,"Fail! couldn't open file", file.errorString());
             return;
        }
        else
        {

                file.open(QIODevice::ReadOnly | QIODevice::Text);
                valueForParsing = file.readAll();
                parseFile();
                file.close();
        }
    }


    void JSONFormat::parseFile()
    {

        QJsonDocument doc = QJsonDocument::fromJson(valueForParsing.toUtf8());
         QJsonObject json = doc.object();
         int rounds = json["rounds"].toInt();

         TypeOfPsyche.Naive = json["Naive"].toInt();
         TypeOfPsyche.Distrustful = json["rounds"].toInt();
         TypeOfPsyche.Simulator = json["rounds"].toInt();
         TypeOfPsyche.Tricky = json["rounds"].toInt();
         TypeOfPsyche.Detective = json["rounds"].toInt();
         TypeOfPsyche.Vindictive = json["rounds"].toInt();
         TypeOfPsyche.Random = json["rounds"].toInt();
         TypeOfPsyche.Persistent = json["rounds"].toInt();
         TypeOfPsyche.Forgiving  = json["rounds"].toInt();

         qDebug() << "No errors";

    }





    CSVFormat::CSVFormat()
    {
        filename = "ResultTable.csv";
        file.setFileName(filename);


       if (!file.open(QIODevice::ReadWrite))
       {
           QMessageBox::information(0,"Fail! couldn't open file", file.errorString());
            return;
       }
       file.close();
    }
     void CSVFormat::writeToFile()
     {
         if (!file.open(QIODevice::WriteOnly))
         {
             QMessageBox::information(0,"Fail! couldn't open file", file.errorString());
              return;
         }
         else
         {

         file.open(QIODevice::WriteOnly);
         QTextStream out(&file);
         int i = 0;
          out << '"' <<  "index"  << '"' << ',' << '"' << "money" << '"' << '\n';
         while (i != lst.get_count())
         {

             out << '"' <<  i  << '"' << ',' << '"' << lst.get_data(i) << '"' << '\n';
            ++i;
         }
         file.close();
     }
     }

     void CSVFormat::readFromFile()
     {
         if (!file.open(QIODevice::ReadOnly))
         {
             QMessageBox::information(0,"Fail! couldn't open file", file.errorString());
              return;
         }
         else
         {

                 file.open(QIODevice::ReadOnly | QIODevice::Text);
                 valueForParsing = file.readAll();
                 parseFile();
                 file.close();
         }
     }

     void CSVFormat::parseFile()
     {
int i = 0;
int j = 0;
QString parsedStr;
parsedStr.resize(valueForParsing.length());
     while (i != (valueForParsing.length() - 1))
     {
            if (valueForParsing[i] == '"')
            {
                ++i;
                while (valueForParsing[i] != '"')
                {

                    parsedStr[j] = valueForParsing[i];
                   // qDebug() <<valueForParsing[i];
                    ++i;
                    ++j;
                }
               // ++
            }

           else if(valueForParsing[i] == '\n')
            {
               parsedStr[j] = '\n';
               ++j;
            }

            else if(valueForParsing[i] == ',')
             {
                parsedStr[j] = ' ';
                ++j;
             }
   ++i;



        }
     parsedStr.resize(j);
    qDebug() << parsedStr;
     }

