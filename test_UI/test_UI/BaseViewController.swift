//
//  BaseViewController.swift
//  HanaGold
//
//  Created by AnNguyen on 12/04/2021.
//

import UIKit
import RxSwift
import RxCocoa
import Localize_Swift

class BaseViewController: UIViewController {
    
    let disposeBag = DisposeBag()
    
    var viewWillAppear: Observable<Void> {
        self.rx.sentMessage(#selector(UIViewController.viewWillAppear(_:)))
            .mapToVoid()
    }
    
    var viewWillDisappear: Observable<Void> {
        self.rx.sentMessage(#selector(UIViewController.viewWillDisappear(_:)))
            .mapToVoid()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(hex: 0x000000)
        setupComponents()
        layoutComponents()
        setupBinding()
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    func setupComponents() {}
    func layoutComponents() {}
    func setupBinding() {}
    
    func showError(title: String = "error.alert.title".localized(), message: String, actions: [UIAlertAction]) -> Binder<Error> {
        return Binder(self) { (vc, error) in
            let alert = UIAlertController(title: title,
                                          message: message,
                                          preferredStyle: .alert)
            actions.forEach { alert.addAction($0) }
            vc.present(alert, animated: true, completion: nil)
        }
    }
    
    func showError(title: String = "error.alert.title".localized(), message: String, actionTitle: String = "error.alert.ok".localized()) -> Binder<Error> {
        return Binder(self, binding: { (vc, error) in
            let alert = UIAlertController(title: title,
                                          message: message,
                                          preferredStyle: .alert)
            let action = UIAlertAction(title: actionTitle,
                                       style: UIAlertAction.Style.cancel,
                                       handler: nil)
            alert.addAction(action)
            vc.present(alert, animated: true, completion: nil)
        })
    }
    
    func showError(title: String = "error.alert.title".localized(), actionTitle: String = "error.alert.ok".localized()) -> Binder<Error> {
        return Binder(self, binding: { (vc, error) in
            let alert = UIAlertController(title: title,
                                          message: error.localizedDescription,
                                          preferredStyle: .alert)
            let action = UIAlertAction(title: actionTitle,
                                       style: UIAlertAction.Style.cancel,
                                       handler: nil)
            alert.addAction(action)
            vc.present(alert, animated: true, completion: nil)
        })
    }
    
    #if DEBUG
    deinit {
        print("\(String(describing: type(of: self))) is being deinitialized")
    }
    #endif
}
