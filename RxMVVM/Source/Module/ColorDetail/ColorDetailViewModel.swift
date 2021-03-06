//
//  ColorDetailViewModel.swift
//  RxMVVM
//
//  Created by JSilver on 2020/02/23.
//  Copyright © 2020 JSilver. All rights reserved.
//

import RxSwift
import RxCocoa
import RxDataSources

class ColorDetailViewModel: BaseViewModel {
    // MARK: - Input
    struct Input {
        
    }
    
    // MARK: - Output
    var name: Driver<String> { _name.asDriver() }
    var hex: Driver<String> { _hex.asDriver() }
    
    // MARK: - State
    private let _name: BehaviorRelay<String>
    private let _hex: BehaviorRelay<String>
    
    // MARK: - Property
    var input: Input = Input()
    
    // MARK: - Constructor
    init(color: Color) {
        _name = BehaviorRelay(value: color.name)
        _hex = BehaviorRelay(value: color.hex)
        super.init()
    }
    
    // MARK: - Public
    
    // MARK: - Private
    
    deinit {
        Logger.verbose()
    }
}
