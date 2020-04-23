import Foundation
import UIKit

public class DrogasCell: UICollectionViewCell{
    
    public let drogasIcon = UIImageView()
   public let drogasNome = UILabel()
    
    public var drogas: Drogas? {
        
        didSet{
            guard let drugsIcon = drogas?.icone else { return }
            guard let drugsNome = drogas?.nome else { return }
            
            drogasIcon.image = drugsIcon
            drogasNome.text = drugsNome
            
        }
        
        
    }
    
    override public init(frame: CGRect){
        super.init (frame: frame)
        self.backgroundColor = .clear
       
        drogasIcon.contentMode = .scaleAspectFit
        drogasIcon.backgroundColor = .clear
        
        drogasNome.text = "nome"
        drogasNome.textColor = .black
        drogasNome.textAlignment = .center
        drogasNome.font = drogasNome.font.withSize(14)
        
        drogasIcon.frame = CGRect(x: 2, y: 0, width: 126, height: 126)
        
        drogasNome.frame = CGRect(x: 0, y: 130, width: self.frame.width, height: 20)
        
        
        self.addSubview(drogasIcon)
        self.addSubview(drogasNome)
    }
    
    required public init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
