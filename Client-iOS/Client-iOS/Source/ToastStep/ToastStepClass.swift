//
//  ToastStepClass.swift
//  Client-iOS
//
//  Created by 김혜수 on 2021/11/21.
//

import UIKit
import Then
import SnapKit

struct stepInfo {
    var isQuestion : Bool
    var image : UIImage
    var mainStr : String
    var subStr : String
}

class ToastStepClass: UIViewController {
    let dataList = [
        stepInfo(isQuestion : true, image: UIImage(named: "step0")!, mainStr: "Step1", subStr: "연락처를 지워봐요"),
        stepInfo(isQuestion : true, image: UIImage(named: "step1")!, mainStr: "Step2", subStr: "X와의 카톡방을 나가봐요"),
        stepInfo(isQuestion : true, image: UIImage(named: "step2")!, mainStr: "Step3", subStr: "X와의 갤러리를 비워봐요"),
        stepInfo(isQuestion : true, image: UIImage(named: "step3")!, mainStr: "Step4", subStr: "X가 준 선물을 버려봐요")
    ]
    
    // MARK: - UIComponenets
    var periodView = UIView().then {
        $0.backgroundColor = .white
        $0.cornerRound(radius: 10)
    }
    lazy var periodLabel = UILabel().then {
        $0.text = "만들기 1일차"
        $0.tintColor = UIColor.gray01
        $0.font = .systemFont(ofSize: 18, weight: .regular)
    }
    
    var mainLabel = UILabel().then {
        $0.text = "Main Label"
        $0.font = .systemFont(ofSize: 24, weight: .medium)
        $0.tintColor = UIColor.blue
    }
    
    var subLabel = UILabel().then {
        $0.text = "Sub Label"
        $0.font = .systemFont(ofSize: 20, weight: .regular)
    }
    
    var dishImg = UIImageView().then() {
        $0.image = UIImage(named: "step1")
    }
    
    var leftBtn = UIButton().then {
        $0.setImage(UIImage(named: "step_btn_undo"), for: .normal)
        $0.addTarget(self, action: #selector(pushLeftButton(_:)), for: .touchUpInside)
    }
    
    var rightBtn = UIButton().then {
        $0.setImage(UIImage(named: "step_btn_do"), for: .normal)
        $0.addTarget(self, action: #selector(pushRightButton(_:)), for: .touchUpInside)
    }
    var btnStackView = UIStackView().then {
        $0.backgroundColor = UIColor(white: 251.0 / 255.0, alpha: 1.0)
        $0.distribution = .fillEqually
        $0.spacing = 16
        $0.axis = .horizontal
    }
     
    var textImgView = UIImageView().then {
        $0.image = UIImage(named: "Group")
        $0.isHidden = true
    }
    
    var textView = UITextView().then {
        $0.backgroundColor = .clear
        $0.isHidden = true
    }
    
    var isQuestion = true
    var curIdx = 0
    
    init(idx : Int) {
        super.init(nibName: nil, bundle: nil)
        setToastStepData(idx)
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - LifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        textView.delegate = self
        setConstraints()
        setView()
    }
    
    func setView(){
        view.backgroundColor = UIColor(white: 251.0 / 255.0, alpha: 1.0)
        btnStackView.addArrangedSubviews([leftBtn,rightBtn])
    }
    
    func setToastStepData(_ idx : Int){
        mainLabel.text = dataList[idx].mainStr
        subLabel.text = dataList[idx].subStr
        dishImg.image = dataList[idx].image
        isQuestion = dataList[idx].isQuestion
        curIdx = idx
    }
    
    @objc
    private func pushLeftButton(_ sender: UIButton) {//안했어요 or x
        
    }
    
    @objc
    private func pushRightButton(_ sender: UIButton) {//했어요 or post
        if(isQuestion){//질문상태
            DispatchQueue.main.async {
                self.mainLabel.text = "Congraturation!"
                self.mainLabel.textColor = UIColor.blue
                
                self.rightBtn.setImage(UIImage(named: "stepclear_btn_check"), for: .normal)
                self.leftBtn.setImage(UIImage(named: "stepclear_btn_x"), for: .normal)
                
                self.textImgView.isHidden = false
                self.textView.isHidden = false
                
                if self.curIdx == 3 { self.subLabel.text = "토스트 완성" }
                else {
                    self.subLabel.text = "\(self.curIdx+1)를 성공했어요"
                    self.dishImg.image = self.dataList[self.curIdx+1].image
                }
                self.isQuestion = false
            }
        }
        
        else{
            DispatchQueue.main.async {
                self.curIdx += 1
                if(self.curIdx >= 4) {
                    //
                }
                else{
                    self.mainLabel.text = self.dataList[self.curIdx].mainStr
                    self.mainLabel.textColor = .black
                    
                    self.rightBtn.setImage(UIImage(named: "step_btn_do"), for: .normal)
                    self.leftBtn.setImage(UIImage(named: "step_btn_undo"), for: .normal)
                    
                    self.textImgView.isHidden = true
                    self.textView.isHidden = true
                    
                    if self.curIdx == 3 { self.subLabel.text = "토스트 완성" }
                    else { self.subLabel.text = "\(self.curIdx+1)를 성공했어요"}
                    self.isQuestion = true
                }
            }
        }
    }

}
