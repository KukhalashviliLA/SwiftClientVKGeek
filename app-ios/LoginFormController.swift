import UIKit

class LoginFormController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        registerForKeyboardNotifications()
    }
    
    
    @IBAction func kbHidden(_ sender: UITapGestureRecognizer) {
        self.view.endEditing(true)
    }
    
    
    @IBOutlet weak var loginInput: UITextField!
    @IBOutlet weak var passwordInput: UITextField!
    @IBOutlet weak var scrollView: UIScrollView!
    
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        let login = loginInput.text!
        let password = passwordInput.text!
        
        if login == "admin" && password == "123456" {
            return true
        } else {
            // Создаем контроллер
            let alert = UIAlertController(title: "Ошибка", message: "Введены неверные данные пользователя", preferredStyle: .alert)
            // Создаем кнопку для UIAlertController
            let action = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            // Добавляем кнопку на UIAlertController
            alert.addAction(action)
            // Показываем UIAlertController
            present(alert, animated: true, completion: nil)
            
            return false
        }
    }
    
    
    func registerForKeyboardNotifications() {
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)
    }

    
    @objc func keyboardWillShow(_ notification: NSNotification) {
        let userInfo = notification.userInfo!
        var kbFrame:CGRect = (userInfo[UIResponder.keyboardFrameBeginUserInfoKey] as! NSValue).cgRectValue
        kbFrame = self.view.convert(kbFrame, from: nil)

        var contentInsert:UIEdgeInsets = self.scrollView.contentInset
        contentInsert.bottom = kbFrame.size.height
        scrollView.contentInset = contentInsert

    }

    @objc func keyboardWillHide(_ notification: NSNotification) {
        let contentInsert:UIEdgeInsets = UIEdgeInsets.zero
        scrollView.contentInset = contentInsert
    }


}
