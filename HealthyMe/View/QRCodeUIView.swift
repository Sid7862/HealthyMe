//
//  QRCodeUIView.swift
//  HealthyMe
//
//  Created by Jeno on 12/03/20.
//  Copyright © 2020 Ahmed Sahib. All rights reserved.
//

import SwiftUI

struct QRCodeUIView: View {
    @State var txt = ""
    var stringData = ""
    
    
    
    var body: some View {
        
        VStack{
            
//            TextField("Enter some data", text: $txt)
//
//            if txt != ""
//            {
            
//                Image(uiImage: UIImage(data: returnData(val: "Helllo Sir"))!)
                Image(uiImage: UIImage(data: returnData(val: stringData))!).resizable().frame(width: 300, height: 300, alignment: .center)
          //  }
        }
    }
    
     func returnData(val: String) -> Data
    {
        
        let val : DataModel = Parsable.load("appointment.json")
         
        let jsonEncoder = JSONEncoder()
         do {
             let jsonData = try jsonEncoder.encode(val)
            let jsonString = String(data: jsonData, encoding: .utf8)
            
             //print("JSON String : " + jsonString)
            let filter = CIFilter(name: "CIQRCodeGenerator")
             let data = jsonString!.data(using: .ascii, allowLossyConversion: false)
             filter?.setValue(data, forKey: "inputMessage")
             filter?.setValue("L", forKey: "inputCorrectionLevel")

             let image = filter?.outputImage
            // let uiimage = UIImage(ciImage: image!)
             
             let transform = CGAffineTransform(scaleX: 10, y: 10)
             let scaledQrImage = image!.transformed(by: transform)
                     
                     // Do some processing to get the UIImage
              let context = CIContext()
              let cgImage = context.createCGImage(scaledQrImage, from: scaledQrImage.extent)
             
             let processedImage = UIImage(cgImage: cgImage!)
             
             //image_my_qr_id?.image = processedImage
             return processedImage.pngData()!
         }
         catch {
         }
        
        let data = Data()
        return data
        
        
    }
}

struct QRCodeUIView_Previews: PreviewProvider {
    static var previews: some View {
        QRCodeUIView()
    }
}
