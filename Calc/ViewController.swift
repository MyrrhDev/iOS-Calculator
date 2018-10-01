//
//  ViewController.swift


import UIKit

class ViewController: UIViewController {
    
    var result = 0.0
    var start = false
    
    var tipoDeOperacion = -1
    @IBOutlet var label: UILabel!
    
    @IBOutlet var percentb: UIButton!
    @IBOutlet var minusb: UIButton!
    @IBOutlet var plusb: UIButton!
    @IBOutlet var divb: UIButton!
    @IBOutlet var multb: UIButton!
    @IBOutlet var equalb: UIButton!
    @IBOutlet var clearb: UIButton!
    @IBOutlet var plminb: UIButton!
    @IBOutlet var commab: UIButton!
    
    @IBOutlet var zerob: UIButton!
    @IBOutlet var oneb: UIButton!
    @IBOutlet var twob: UIButton!
    @IBOutlet var threeb: UIButton!
    @IBOutlet var fourb: UIButton!
    @IBOutlet var fiveb: UIButton!
    @IBOutlet var sixb: UIButton!
    @IBOutlet var sevenb: UIButton!
    @IBOutlet var eightb: UIButton!
    @IBOutlet var nineb: UIButton!
    
    @IBAction func zero(){
        if (label.text == "0" || start) {
            label.text = "0"
            start = false
        } else {
            label.text?.append("0")
        }
    }
    
    @IBAction func one(){
        if (label.text == "0" || start) {
            label.text = "1"
            start = false
        } else {
            label.text?.append("1")
        }
    }
    
    @IBAction func two(){
        if (label.text == "0" || start) {
            label.text = "2"
            start = false
        } else {
            label.text?.append("2")
        }
    }
    
    @IBAction func three(){
        if (label.text == "0" || start) {
            label.text = "3"
            start = false
        } else {
            label.text?.append("3")
        }
    }
    
    @IBAction func four(){
        if (label.text == "0" || start) {
            label.text = "4"
            start = false
        } else {
            label.text?.append("4")
        }
    }
    
    @IBAction func five(){
        if (label.text == "0" || start) {
            label.text = "5"
            start = false
        } else {
            label.text?.append("5")
        }
    }
    @IBAction func six(){
        if (label.text == "0" || start) {
            label.text = "6"
            start = false
        } else {
            label.text?.append("6")
        }
    }
    @IBAction func seven(){
        if (label.text == "0" || start) {
            label.text = "7"
            start = false
        } else {
            label.text?.append("7")
        }
    }
    @IBAction func eight(){
        if (label.text == "0" || start) {
            label.text = "8"
            start = false
        } else {
            label.text?.append("8")
        }
    }
    @IBAction func nine(){
        if (label.text == "0" || start) {
            label.text = "9"
            start = false
        } else {
            label.text?.append("9")
        }
    }
    
    @IBAction func reset() {
        label.text = "0";
        self.result = 0;
        tipoDeOperacion = -1
    }
    
    @IBAction func plusminus() {
        self.result = Double(label.text!)! * -1
        //label.text = String(self.result)
        checkifDouble()
    }
    
    @IBAction func equal() {
        if (self.tipoDeOperacion == 0) {
            self.result = self.result + Double(label.text!)!
            tipoDeOperacion = -1
        }
        else if (self.tipoDeOperacion == 1) {
            self.result = self.result/Double(label.text!)!
            tipoDeOperacion = -1
        }
        else if (self.tipoDeOperacion == 2) {
            self.result = self.result*Double(label.text!)!
            tipoDeOperacion = -1
        }
        else if (self.tipoDeOperacion == 3) {
            self.result = self.result-Double(label.text!)!
            tipoDeOperacion = -1
        }
        checkifDouble()
    }
    
    func checkifDouble () {
        var xdp:Int = 0
        
        if let decimalString = String(self.result).components(separatedBy: ".").last, let decimal = Int(decimalString) {
            xdp = decimal
        }
        
        if (xdp == 0) {
            label.text = String(self.result).components(separatedBy: ".").first
        } else {
            label.text = String(self.result)
        }
    }
    
    @IBAction func plus() {
        if(self.tipoDeOperacion >= 0) {
            equal();
        }
        self.result = Double(label.text!)!
        //label.text = "0"
        self.tipoDeOperacion = 0
        start = true
    }
    
    @IBAction func division() {
        if(self.tipoDeOperacion >= 0) {
            equal();
        }
        self.result = Double(label.text!)!
        //label.text = "0"
        self.tipoDeOperacion = 1
        start = true
    }
    
    @IBAction func times() {
        if(self.tipoDeOperacion >= 0) {
            equal();
        }
        self.result = Double(label.text!)!
        //label.text = "0"
        self.tipoDeOperacion = 2
        start = true
    }
    
    @IBAction func minus() {
        if(self.tipoDeOperacion >= 0) {
            equal();
        }
        self.result = Double(label.text!)!
        //label.text = "0"
        self.tipoDeOperacion = 3
        start = true
    }
    
    @IBAction func percent() {
        if(self.tipoDeOperacion >= 0) {
            equal();
        }
        self.result = Double(label.text!)!
        self.result = self.result/100
        //label.text = String(self.result)
        checkifDouble()
    }
    @IBAction func coma() {
        label.text?.append(".")
    }

    
    func canviarEstiloBoton(boton: UIButton) {
        boton.layer.borderColor = UIColor.black.cgColor
        boton.layer.borderWidth = 1
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.canviarEstiloBoton(boton: percentb)
        self.canviarEstiloBoton(boton: minusb)
        self.canviarEstiloBoton(boton: plusb)
        self.canviarEstiloBoton(boton: divb)
        self.canviarEstiloBoton(boton: multb)
        self.canviarEstiloBoton(boton: equalb)
        self.canviarEstiloBoton(boton: clearb)
        self.canviarEstiloBoton(boton: plminb)
        self.canviarEstiloBoton(boton: commab)
        self.canviarEstiloBoton(boton: zerob)
        self.canviarEstiloBoton(boton: oneb)
        self.canviarEstiloBoton(boton: twob)
        self.canviarEstiloBoton(boton: threeb)
        self.canviarEstiloBoton(boton: fourb)
        self.canviarEstiloBoton(boton: fiveb)
        self.canviarEstiloBoton(boton: sixb)
        self.canviarEstiloBoton(boton: sevenb)
        self.canviarEstiloBoton(boton: eightb)
        self.canviarEstiloBoton(boton: nineb)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}

