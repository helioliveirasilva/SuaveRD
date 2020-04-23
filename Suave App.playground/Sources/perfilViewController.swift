
//: A UIKit based Playground for presenting user interface

import UIKit
import PlaygroundSupport



public class PerfilViewController : UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    
    
    let fvBackground = UIView()
    let fvImage = UIImageView()
    let fvNome = UILabel()
    let fvIdade = UILabel()
    let fvPeso = UILabel()
    let fvAltura = UILabel()
    let tvView = UIView()
    let tvDoencas = UITableView()
    let sectionView = UIView()
    let sectionLabel = UILabel()
    
    public override func loadView() {
        let view = UIView()
        self.view = view
        view.backgroundColor = UIColor(red: 239/255, green: 239/255, blue: 244/255, alpha: 1)
        
        
        self.tvDoencas.register(DoencaCustomCell.self, forCellReuseIdentifier: "TagCell")
        
        navigationController?.navigationBar.prefersLargeTitles = false
        navigationItem.title = "Perfil"
        navigationController?.navigationBar.frame = CGRect(x: 0, y: 20, width: 375, height: 200)
        navigationController?.navigationBar.backgroundColor = .systemPink
        
        
        setupFirstView()
        setupTableView()
        createSection1()
    }
    
    public func setupFirstView(){
        
        fvBackground.frame = CGRect(x: 0, y: (self.navigationController?.navigationBar.frame.height)! + 31, width: 375, height: 208)
        //    fvBackground.frame = CGRect(x: 0, y: 125, width: 375, height: 208)
        fvBackground.backgroundColor = .white
        fvBackground.layer.borderWidth = 1
        fvBackground.layer.borderColor = CGColor(srgbRed: 198/255, green: 197/255, blue: 200/255, alpha: 1)
        view.addSubview(fvBackground)
        
        fvImage.frame = CGRect(x: 16, y: 42, width: 125, height: 125)
        fvImage.image = perfil.foto
        fvImage.layer.cornerRadius = 125/2
        fvImage.layer.masksToBounds = true
        fvBackground.addSubview(fvImage)
        
        fvNome.frame = CGRect(x: 183, y: 48, width: 192, height: 30)
        fvNome.text = perfil.nome
        fvNome.font = UIFont.boldSystemFont(ofSize: 22)
        fvNome.sizeToFit()
        fvBackground.addSubview(fvNome)
        
        fvIdade.frame = CGRect(x: 183, y: 82, width: 192, height: 30)
        fvIdade.text = String(perfil.idade)+" Anos"
        fvIdade.textColor = UIColor(red: 138/255, green: 138/255, blue: 142/255, alpha: 1)
        fvIdade.sizeToFit()
        fvBackground.addSubview(fvIdade)
        
        fvPeso.frame = CGRect(x: 183, y: 111, width: 192, height: 30)
        fvPeso.text = String(perfil.peso)+" Kilos"
        fvPeso.textColor = UIColor(red: 138/255, green: 138/255, blue: 142/255, alpha: 1)
        fvPeso.sizeToFit()
        fvBackground.addSubview(fvPeso)
        
        fvAltura.frame = CGRect(x: 183, y: 139, width: 192, height: 30)
        fvAltura.text = String(perfil.altura)+" Metros"
        fvAltura.textColor = UIColor(red: 138/255, green: 138/255, blue: 142/255, alpha: 1)
        fvAltura.sizeToFit()
        fvBackground.addSubview(fvAltura)
        
    }
    
    public func setupTableView(){
        tvView.frame = CGRect(x: 0, y: 309, width: 375, height: 353)
        tvView.backgroundColor = .green
        view.addSubview(tvView)
        
        tvView.addSubview(tvDoencas)
        tvDoencas.backgroundColor = .white
        tvDoencas.frame = CGRect(x: 0, y: 0, width: tvView.frame.width, height: tvView.frame.height)
        tvDoencas.delegate = self
        tvDoencas.dataSource = self
        
        
    }
    
    public func createSection1(){
        
        sectionView.frame = CGRect(x: 0, y: (self.navigationController?.navigationBar.frame.height)!, width: 375, height: 24)
        sectionLabel.frame = CGRect(x:16, y:11, width: 375, height:18)
        sectionLabel.font = UIFont.systemFont(ofSize: 14)
        sectionLabel.text = "DADOS PESSOAIS";
        sectionLabel.textColor = .gray
        
        //sectionView.backgroundColor = UIColor (displayP3Red: 239/255, green: 239/255, blue: 244/255, alpha: 1)
        sectionView.backgroundColor = UIColor(displayP3Red: 239/255, green: 239/255, blue: 244/255, alpha: 1)
        view.addSubview(sectionView)
        sectionView.addSubview(sectionLabel)
        
    }
    
    public func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        let view = UIView(frame: CGRect(x:0, y:0, width:tableView.frame.size.width, height:18))
        let label = UILabel(frame: CGRect(x:16, y:5, width:tableView.frame.size.width, height:18))
        label.font = UIFont.systemFont(ofSize: 14)
        label.text = "HISTÓRICO DE SAÚDE";
        label.textColor = .gray
        view.addSubview(label)
        view.backgroundColor = UIColor(displayP3Red: 239/255, green: 239/255, blue: 244/255, alpha: 1)
        return view
        
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "TagCell", for: indexPath) as? DoencaCustomCell else {
            fatalError("The dequeued cell is not an instance of MenuTableViewCell.")
        }
        cell.variaveis = indexPath.row
        return cell
        
    }
    
    public func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "HISTÓRICO DE SAÚDE"
    }
    
    public func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 63
    }
    
}


