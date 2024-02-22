//
//  AugmentedReality.swift
//  Myanmar Honorable People Figma
//
//  Created by Min Thu Khine on 2/13/24.
//

import SwiftUI
import ARKit


struct ARViewContainer: UIViewControllerRepresentable {
    var selectedARImageNameForMMK: String
    var selectedARImageNameForUSD: String
    
    func makeUIViewController(context: Context) -> ARViewController {
        let viewController = ARViewController()
        viewController.selectedARImageNameForMMK = self.selectedARImageNameForMMK
        viewController.selectedARImageNameForUSD = self.selectedARImageNameForUSD
        
        return viewController
    }
    
    func updateUIViewController(_ uiViewController: ARViewController, context: Context) {}
    
    typealias UIViewControllerType = ARViewController
}

class ARViewController: UIViewController, ARSCNViewDelegate {
    var sceneView: ARSCNView!
    var selectedARImageNameForMMK: String?
    var selectedARImageNameForUSD: String?
    
    override func loadView() {
        sceneView = ARSCNView(frame: .zero)
        self.view = sceneView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sceneView.delegate = self
        sceneView.showsStatistics = true
        
        let configuration = ARWorldTrackingConfiguration()
        
        if let imageToTrack = ARReferenceImage.referenceImages(inGroupNamed: "AR Money", bundle: Bundle.main) {
            configuration.detectionImages = imageToTrack
            configuration.maximumNumberOfTrackedImages = 2
            print("Image Scanned Successfully")
        }
        
        sceneView.session.run(configuration)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        sceneView.session.pause()
    }
    
    func renderer(_ renderer: SCNSceneRenderer, nodeFor anchor: ARAnchor) -> SCNNode? {
        
        let node = SCNNode()
        
        if let imageAnchor = anchor as? ARImageAnchor {
           
            let imageSize = imageAnchor.referenceImage.physicalSize
            
            let overlayPlane = SCNPlane(width: imageSize.width, height: imageSize.height)
            
            if imageAnchor.referenceImage.name == "MMK" {
                let imageName = selectedARImageNameForMMK ?? ""
                
                overlayPlane.firstMaterial?.diffuse.contents = UIImage(named: imageName)
                
                let overlayNode = SCNNode(geometry: overlayPlane)
                
                overlayNode.eulerAngles.x  = -Float.pi/2
                
                node.addChildNode(overlayNode)
            }
            
            if imageAnchor.referenceImage.name == "USD" {
                let imageName = selectedARImageNameForUSD ?? ""
                
                overlayPlane.firstMaterial?.diffuse.contents = UIImage(named: imageName)
                
                let overlayNode = SCNNode(geometry: overlayPlane)
                
                overlayNode.eulerAngles.x  = -Float.pi/2
                
                node.addChildNode(overlayNode)
            }
            
        }
        
        return node
    }
}

struct AugmentedRealityView: View {
    @State var selectedARImageNameForMMK: String
    @State var selectedARImageNameForUSD: String
    
    var body: some View {
        ZStack {
            VStack {
                ARViewContainer(selectedARImageNameForMMK: selectedARImageNameForMMK, selectedARImageNameForUSD: selectedARImageNameForUSD)
                    .edgesIgnoringSafeArea(.all)
                Spacer()
                Text("Place your device in landscape mode for better experience.")
            }
        }
    }
}


