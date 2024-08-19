//
//  SecondController.swift
//  stackView
//
//  Created by yusuf ergül on 10.06.2024.
//

import UIKit

class SecondController: UIViewController {

    @IBOutlet weak var topSecond: UIView!
    @IBOutlet weak var topFirs: UIView!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var paging: UISegmentedControl!
    @IBOutlet weak var collection: UICollectionView!
   // var headerIcons: [String] = ["resim","resim","resim"]
    var headerTexts: [String] = ["Atanmış Eğitimlerim","Zorunlu Eğitimlerim","Seçmeli Eğitimlerim","Muaf Eğitimlerim"]
    var cardColours: [String] = ["mavi","kirmizi","sari","yesil"]
    var egitimSet: [String] = ["Sosyal Eğitim","Spor Eğitim","Temel Beceri","Teknik Eğitim","Takım Uyumu","Acil Durum Eğitim"]
    var filtrelenmis = [String]()
    override func viewDidLoad() {
        super.viewDidLoad()
        topFirs.layer.cornerRadius = 5
        topSecond.layer.cornerRadius = 5
        self.filtrelenmis = egitimSet
        tableView.reloadData()

    }
    
    @IBAction func textChanged(_ sender: UITextField) {
        if let searchText = sender.text{
            filtrelenmis = searchText.isEmpty ? egitimSet : egitimSet.filter{$0.lowercased().contains(searchText.lowercased())}
            tableView.reloadData()
        }
    }
    
    @IBAction func segmentChanged(_ sender: Any) {
        tableView.reloadData()
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
extension SecondController : UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if paging.selectedSegmentIndex == 2{
            return 1
        }
        
        return filtrelenmis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "table", for: indexPath) as! TableViewCell
        cell.label.text = filtrelenmis[indexPath.row]
        switch paging.selectedSegmentIndex {
        case 0:
            cell.tema.image = UIImage(named: "yari")
        case 1:
            cell.tema.image = UIImage(named: "gri")
            
        default:
            break
        }
        return cell
    }
}
extension SecondController : UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return headerTexts.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collection", for: indexPath) as! CollectionViewCell
        cell.header.text = headerTexts[indexPath.row]
        cell.tema.image = UIImage(named: cardColours[indexPath.row])
        
        return cell
    }
    
    
}

