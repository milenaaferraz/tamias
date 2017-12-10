
import UIKit


class essevaidarcertoViewController: UIViewController,
UICollectionViewDataSource, UICollectionViewDelegate {
    
    
    let mediadora = Mediadora.shared
    
    @IBOutlet weak var collectionViewBoa: UICollectionView!
    
    
    
    @IBOutlet weak var numeroDeItens: UILabel!
    
    var stringRecompensa = ""
    
    var itensDoJogo:[classeDasRecompensas] = []
    
    
    override func viewDidLoad() {
        
        itensDoJogo = mediadora.floresSementes
        
        
        super.viewDidLoad()
        
        
        
        self.collectionViewBoa.delegate = self
        
        self.collectionViewBoa.dataSource = self

        
        // Do any additional setup after loading the view.
        
        
    }
    
    override func didReceiveMemoryWarning() {
        
        super.didReceiveMemoryWarning()
        
        // Dispose of any resources that can be recreated.
        
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView,
                        numberOfItemsInSection section: Int) -> Int {
        
        return itensDoJogo.count
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView,
                        cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell =
            collectionView.dequeueReusableCell(withReuseIdentifier:
                "collectioncell", for: indexPath) as! imagemCollectionViewCell
        
        cell.imagemDaCelula.image = UIImage(named:itensDoJogo[indexPath.row].sementesRecompensa)
        
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        didSelectItemAt indexPath: IndexPath) {

      mediadora.florPraPlantar.append(itensDoJogo[indexPath.row].imagemPlantar)
        
      
    }
    
}
