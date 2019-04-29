/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fatecpg.quiz;

import java.util.ArrayList;

/**
 *
 * @author User
 */
public class DB {

    public static ArrayList<Question> getAllQuestions() {
        ArrayList<Question> quiz = new ArrayList();
        quiz.add(new Question(1, "Pergunta 1", "2", new String[]{"1", "2", "3"}));
        quiz.add(new Question(2, "Pergunta 2", "3", new String[]{"1", "2", "3"}));
        quiz.add(new Question(3, "Pergunta 3", "2", new String[]{"1", "2", "3"}));
        quiz.add(new Question(4, "Pergunta 4", "2", new String[]{"1", "2", "3"}));
        quiz.add(new Question(5, "Pergunta 5", "3", new String[]{"1", "2", "3"}));
        quiz.add(new Question(6, "Pergunta 6", "2", new String[]{"1", "2", "3"}));
        quiz.add(new Question(7, "Pergunta 7", "2", new String[]{"1", "2", "3"}));
        quiz.add(new Question(8, "Pergunta 8", "3", new String[]{"1", "2", "3"}));
        quiz.add(new Question(9, "Pergunta 9", "2", new String[]{"1", "2", "3"}));
        quiz.add(new Question(10, "Pergunta 10", "2", new String[]{"1", "2", "3"}));
        return quiz;
    }
    

}
