/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fatecpg.quiz;

/**
 *
 * @author User
 */
public class Question {

    private int id;
    private String question;
    private String answer;
    private String options[];

    public Question(int id, String question, String answer, String[] options) {
        this.id = id;
        this.question = question;
        this.answer = answer;
        this.options = options;

    }

    public String getQuestion() {
        return question;
    }

    public void setQuestion(String question) {
        this.question = question;
    }

    public String getAnswer() {
        return answer;
    }

    public void setAnswer(String answer) {
        this.answer = answer;
    }

    public String[] getOptions() {
        return options;
    }

    public void setOptions(String[] options) {
        this.options = options;
    }

}
