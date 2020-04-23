//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport



class MainTabBarController : UITabBarController {
    
    
    override func loadView() {
        super.loadView()
        
        tabBar.barTintColor = .white
        setupTabBar()
        
    }
    
    func setupTabBar(){
        
        let perfilController = UINavigationController(rootViewController: PerfilViewController())
        perfilController.tabBarItem.image = UIImage(imageLiteralResourceName: "perfil_azul.png")
        perfilController.tabBarItem.selectedImage = UIImage(imageLiteralResourceName: "perfil_azul.png")
        perfilController.tabBarItem.title = "Perfil"
        

        let drogasController = UINavigationController(rootViewController: CollectionViewController(collectionViewLayout: UICollectionViewFlowLayout()))
        drogasController.tabBarItem.image = UIImage(imageLiteralResourceName: "drogas_cinza.png")
        drogasController.tabBarItem.selectedImage = UIImage(imageLiteralResourceName: "drogas_azul.png")
        drogasController.tabBarItem.title = "Drogas"
        
        viewControllers = [perfilController,drogasController]
        
        
        
        
    }
    
    
    
}
// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MainTabBarController()



