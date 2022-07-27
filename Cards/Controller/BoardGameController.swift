//
//  BoardGameController.swift
//  Cards
//
//  Created by Сафаров Рустам Далерович on 7/27/22.
//

import UIKit

class BoardGameController: UIViewController {
    var cardsPairCount = 8
    lazy var game: Game = getNewGame()
    lazy var startButtonView = getStartButtonView()
    
    override func loadView() {
        super.loadView()
        // добавляем кнопку на сцену
        view.addSubview(startButtonView)
    }
    
    private func getNewGame() -> Game {
        let g = Game()
        g.cardsCount = self.cardsPairCount
        g.generateCards()
        return g
    }
    
    private func getStartButtonView() -> UIButton {
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 200, height: 50))
        button.center.x = view.center.x
        let window = UIApplication.shared.windows[0]
        let topPadding = window.safeAreaInsets.top
        button.frame.origin.y = topPadding
        button.setTitle("Начать игру", for: .normal)
        button.setTitleColor(.gray, for: .highlighted)
        button.setTitleColor(.black, for: .normal)
        button.layer.cornerRadius = 10
        button.backgroundColor = .systemGray4
        return button
    }
}
