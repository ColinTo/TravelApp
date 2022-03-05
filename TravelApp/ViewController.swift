//
//  ViewController.swift
//  TravelApp
//
//  Created by Colin To on 2022-03-04.
//

import UIKit

class ViewController: UIViewController {

	@IBOutlet weak var signupBtn: UIButton!
	@IBOutlet weak var loginBtn: UIButton!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view.
		
		signupBtn.layer.cornerRadius = 20
		loginBtn.layer.cornerRadius = 20
		
		signupBtn.layer.shadowColor = UIColor.gray.cgColor
		signupBtn.layer.shadowOpacity = 0.5
		
		loginBtn.layer.shadowColor = UIColor.gray.cgColor
		loginBtn.layer.shadowOpacity = 0.5
	
	}
	
	override func prepare(for segue: UIStoryboardSegue, sender: Any?){
		// This function is called right when you press the button from Navigation to Home Page
		// Eg. If you want to send something to the next page, prepare it before moving there
		
		// We downcast destination to SignupViewController
		let destinationVC = segue.destination as! SignupViewController
		destinationVC.titleValue = "Custom title"
	}

	
	@IBAction func loginAction(_ sender: Any) {
		// TODO: perform transition between view controller and login view controller programatically
//		let storyBoard = UIStoryboard(name: "Main", bundle: nil)
		// We are typecasting as LoginViewController
		let loginVC = storyboard?.instantiateViewController(withIdentifier: "loginID") as! LoginViewController
//		let loginVC = LoginViewController()
		loginVC.titleValue = "Custom login title"
		self.navigationController?.pushViewController(loginVC, animated: true)
	}
	
}
