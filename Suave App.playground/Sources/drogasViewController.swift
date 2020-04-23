import UIKit
import PlaygroundSupport

public class CollectionViewController : UICollectionViewController, UICollectionViewDelegateFlowLayout {

    override public func viewDidLoad() {
        super.viewDidLoad()
        self.collectionView?.backgroundColor = .white
        self.collectionView?.register(DrogasCell.self, forCellWithReuseIdentifier: "PlayCell")
        
        navigationController?.navigationBar.prefersLargeTitles = false
        navigationItem.title = "Drogas"
    }    

    override public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return drogasArray.count
    }

    override public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PlayCell", for: indexPath) as! DrogasCell
        cell.drogas = drogasArray[indexPath.item]
        
        return cell
    }

   public func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        print(view.frame.width/2 - 16)
    return CGSize(width: 130, height: 160)
       
    }
    
   public func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        
        return UIEdgeInsets(top: 8, left: 40, bottom: 8, right: 40)
        
    }
    
    override public func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
       
        print(drogasArray[indexPath.row].nome)
        let informacaoViewController = InformacaoViewController()
        informacaoViewController.title = drogasArray[indexPath.row].nome
        self.navigationController?.pushViewController(informacaoViewController, animated: true)
        novoArray = []
        novoArray.append(drogasArray[indexPath.row].infoBasica)
        novoArray.append(drogasArray[indexPath.row].modoUso)
        novoArray.append(drogasArray[indexPath.row].efeito)
        novoArray.append(drogasArray[indexPath.row].efeitoColateral)
        novoArray.append(drogasArray[indexPath.row].recomBasica)
        novoArray.append(drogasArray[indexPath.row].dosagemIdeal)
        }
        
        
    }
    

