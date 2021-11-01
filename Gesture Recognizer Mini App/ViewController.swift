//
//  ViewController.swift
//  Gesture Recognizer Mini App
//
//  Created by Daniel Vega on 9/26/21.
//

import UIKit

class ViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate  {

    @IBOutlet weak var imageView1: UIImageView!
    @IBOutlet weak var imageView2: UIImageView!
    @IBOutlet weak var imageView3: UIImageView!
    @IBOutlet weak var ImageView4: UIImageView!
    @IBOutlet weak var ImageView5: UIImageView!
    @IBOutlet weak var ImageView6: UIImageView!
    @IBOutlet weak var cameraImageView: UIImageView!
    
    let imagePicker = UIImagePickerController()
    override func viewDidLoad() {
        super.viewDidLoad()
        imagePicker.delegate = self
        // Do any additional setup after loading the view.
    }
    
    @IBAction func I1Tapped(_ sender: UITapGestureRecognizer) {
        
        imageView1.center = sender.location(in: view)
        
    }
    
    @IBAction func I2Panned(_ sender: UIPanGestureRecognizer) {
        imageView2.center = sender.location(in: view)
    }
    
    @IBAction func I3Panned(_ sender: UIPanGestureRecognizer) {
        imageView3.center = sender.location(in: view)
    }
    @IBAction func I4Panned(_ sender: UIPanGestureRecognizer) {
        ImageView4.center = sender.location(in: view)
    }
    
    @IBAction func I5Panned(_ sender: UIPanGestureRecognizer) {
        ImageView5.center = sender.location(in: view)
    }
    
    @IBAction func I6Panned(_ sender: UIPanGestureRecognizer) {
        ImageView6.center = sender.location(in: view)
    }
    
    @IBAction func panGesture(_ sender: UIPanGestureRecognizer) {

        cameraImageView.center = sender.location(in: view)
    }
    
    
    @IBAction func cameraAction(_ sender: UIButton) {
        if UIImagePickerController.isSourceTypeAvailable(.camera){
            imagePicker.sourceType = UIImagePickerController.SourceType.camera
        }
        else{
            imagePicker.sourceType = UIImagePickerController.SourceType.photoLibrary
        }
        
        present(imagePicker, animated: true, completion: nil)
    }
    
    @IBAction func libraryAction(_ sender: UIButton) {
        imagePicker.sourceType = UIImagePickerController.SourceType.photoLibrary
        present(imagePicker, animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        self.cameraImageView.image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage
        
    }
    
    
    
    
}

