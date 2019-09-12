//
//  ViewController.swift
//  Bingo4
//
//

import UIKit

extension UIImage {
    public convenience init?(color: UIColor, size: CGSize = CGSize(width: 1, height: 1)) {
        
        let rect = CGRect(origin: .zero, size: size)
        UIGraphicsBeginImageContextWithOptions(rect.size, false, 0.0)
        color.setFill()
        UIRectFill(rect)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        guard let cgImage = image?.cgImage else { return nil }
        self.init(cgImage: cgImage)
    }
}


class ViewController: UIViewController {
    

  
    @IBOutlet weak var button: UIButton!
    
    
    override func viewDidLoad() {
        button.backgroundColor = .clear
        button.setBackgroundImage(UIImage(color: .black), for: .normal)
        button.setBackgroundImage(UIImage(color: .red), for: .highlighted)
        super.viewDidLoad()
    
        // Do any additional setup after loading the view.
    
    }
    
  
    }

