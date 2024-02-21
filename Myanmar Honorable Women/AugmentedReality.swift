//
//  AugmentedReality.swift
//  Myanmar Honorable People Figma
//
//  Created by Min Thu Khine on 2/13/24.
//

import SwiftUI
import ARKit


struct ARViewContainer: UIViewControllerRepresentable {
    var selectedARImageName: String
    
    func makeUIViewController(context: Context) -> ARViewController {
        let viewController = ARViewController()
        viewController.selectedARImageName = self.selectedARImageName // Pass selectedName to ARViewController
        return viewController
    }
    
    func updateUIViewController(_ uiViewController: ARViewController, context: Context) {}
    
    typealias UIViewControllerType = ARViewController
}

class ARViewController: UIViewController, ARSCNViewDelegate {
    var sceneView: ARSCNView!
    var selectedARImageName: String?
    
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
    
    // ARSCNViewDelegate methods...
    func renderer(_ renderer: SCNSceneRenderer, nodeFor anchor: ARAnchor) -> SCNNode? {
        
        let node = SCNNode()
        
        if let imageAnchor = anchor as? ARImageAnchor {
            
//            print(imageAnchor.referenceImage.name)
            
            let imageSize = imageAnchor.referenceImage.physicalSize
            
            let overlayPlane = SCNPlane(width: imageSize.width, height: imageSize.height)
            
            let imageName = selectedARImageName ?? "defaultAssetName"
            
            overlayPlane.firstMaterial?.diffuse.contents = UIImage(named: imageName)
            
            let overlayNode = SCNNode(geometry: overlayPlane)
            
            overlayNode.eulerAngles.x  = -Float.pi/2
            
            node.addChildNode(overlayNode)
            
        }
        
        return node
    }
}

struct AugmentedRealityView: View {
    @State var selectedARImageName: String
    var body: some View {
        ZStack {
            VStack {
                ARViewContainer(selectedARImageName: selectedARImageName)
                    .edgesIgnoringSafeArea(.all)
                Spacer()
                Text("Place your device in landscape mode for better experience.")
            }
        }
    }
}


