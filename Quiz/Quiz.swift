//
//  Quiz.swift
//  Quiz
//
//  Created by Amanda Costa on 10/08/21.
//


// classe quiz, seria a classe que representa a pergunta direcionada ao usuário.


import Foundation

class Quiz {
    
    let question: String    // representa a pergunta em si
    let options:  [String]
    private let correctedAnswer: String   //armazena a resposta correta
    
    init(question: String, options: [String], correctedAnswer: String) {
        self.question = question
        self.options = options
        self.correctedAnswer = correctedAnswer
    }
    
    func validateOption(_ index: Int) -> Bool // index nesse caso vai mostrar o indice do botao selecionado, ou seja, qual foi a opcao. essa funcao serve pra validar se o usuario acertou ou nao a pergunta
    {
        let answer = options [index]
        return answer == correctedAnswer
    }
    deinit {
        print("liberou quiz da memoria")
    }
}

