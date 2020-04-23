import Foundation
import UIKit

public class CustomCell: UITableViewCell {
    
    public var infoIcon = UIImageView()
    public var infoTitle = UILabel()
    public var infoData = UILabel()
    public var vouTentar: Int? {

        
        didSet{
            guard let testeee = vouTentar else { return }
            
            infoTitle.text = titlesArray[testeee+1]
            infoData.text = novoArray[testeee]
        }
        
        
    }


    

    
    override public init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(infoIcon)
        addSubview(infoTitle)
        addSubview(infoData)
        setupIcon()
        setupTitle()
        setupData()
        
        
    }

    
    required public init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func setupIcon(){
        infoIcon.backgroundColor = .systemPink
        infoIcon.frame = CGRect(x: 10, y: 13, width: 20, height: 20)
        
    }
    
    public func setupTitle(){
        infoTitle.frame = CGRect(x: 35, y: 16, width: 400, height: 15)
        infoTitle.font.withSize(13)
        
    }
    
    public func setupData(){
        infoData.frame = CGRect(x: 35, y: 25, width: 400, height: 50)
        infoData.font = UIFont.boldSystemFont(ofSize: 14.0)
    }
    
    
    
}
