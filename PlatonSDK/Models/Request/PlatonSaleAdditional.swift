
import Foundation

protocol PlatonWebAdditionalProtocol {
    var ext1: String? { get set }
    var ext2: String? { get set }
    var ext3: String? { get set }
    var ext4: String? { get set }
    var ext10: String? { get set }
}

protocol PlatonWebTokenAdditionalProtocol {
    var card_token: String? { get set }
    var ext2: String? { get set }
    var ext3: String? { get set }
    var ext4: String? { get set }
}

/// Sale options for Single Message System (SMS) or Dual Message System (DMS) (*PlatonMethodAction.sale*)
public struct PlatonSaleAdditional: PlatonParametersProtocol {
    
    /// Asynchronous (*PlatonOption.yes*) or synchronous (default) mode (*PlatonOption.no)
    public var async: PlatonOption?
    
    /// Payment channel (Sub-account)
    ///
    /// If you want to send a payment for the specific sub-account (channel), you need to use channel ID that specified in your Payment Platform account settings
    public var channelId: String?
    
    /// Initialization of the transaction with possible following recurring
    ///
    /// See *PlatonOption* for possible values. Default *PlatonOption.no*
    public var recurringInit: PlatonOption?
    public let termsUrl3ds = PlatonSDK.shared.credentials?.termUrl3Ds
    
    public var platonParams: PlatonParams {
        return [
            PlatonMethodProperty.async: async?.rawValue,
            PlatonMethodProperty.channelId: channelId,
            PlatonMethodProperty.reccuringInit: recurringInit?.rawValue,
            PlatonMethodProperty.termsUrl3ds: termsUrl3ds
            ]
    }
    
    public init(async: PlatonOption? = nil, channelId: String? = nil, recurringInit: PlatonOption? = nil) {
        self.async = async
        self.channelId = channelId
        self.recurringInit = recurringInit
    }
    
}

/// Web options provides fields by which developer can customize displayed web form in web SALE, RECURRING_SALE request
///
/// See *PlatonWebSaleAdapter* and *PlatonWebRecurringAdapter* for its usages
public struct PlatonWebAdditional: PlatonParametersProtocol, PlatonWebAdditionalProtocol {
    
    /// Client Parameter 1
    var ext1: String?
    
    /// Client Parameter 2
    var ext2: String?
    
    /// Client Parameter 3
    var ext3: String?
    
    /// Client Parameter 4
    var ext4: String?
    
    /// Client Parameter 10
    var ext10: String?
    
    public var platonParams: PlatonParams {
        return [
            PlatonMethodProperty.ext1: ext1,
            PlatonMethodProperty.ext2: ext2,
            PlatonMethodProperty.ext3: ext3,
            PlatonMethodProperty.ext4: ext4,
            PlatonMethodProperty.ext10: ext10
        ]
    }
    
    public init(ext1: String?, ext2: String?, ext3: String?, ext4: String?, ext10: String?) {
        self.ext1 = ext1
        self.ext2 = ext2
        self.ext3 = ext3
        self.ext4 = ext4
        self.ext10 = ext10
    }
    
}

/// This class extends *PlatonWebOptions* and provide some new fields which handle representation of requests from *PlatonWebSaleAdapter*
public struct PlatonWebSaleAdditional: PlatonParametersProtocol, PlatonWebAdditionalProtocol {
    
    /// Localization language to be selected on the payment page by default
    var language: String?
    
    /// Optional URL to which the Buyer will be returned after three unsuccessful purchase attempts
    var errorUrl: String?
    
    /// Specific payment page identifier for web payments
    ///
    /// (In case the Client's account has multiple payment pages configured)
    var formId: String?
    
    /// Client Parameter 1
    var ext1: String?
    
    /// Client Parameter 2
    var ext2: String?
    
    /// Client Parameter 3
    var ext3: String?
    
    /// Client Parameter 4
    var ext4: String?
    
    /// Client Parameter 4
    var ext10: String?
    
    public var platonParams: PlatonParams {
        return [
            PlatonMethodProperty.lang: language,
            PlatonMethodProperty.errorUrl: errorUrl,
            PlatonMethodProperty.formId: formId,
            PlatonMethodProperty.ext1: ext1,
            PlatonMethodProperty.ext2: ext2,
            PlatonMethodProperty.ext3: ext3,
            PlatonMethodProperty.ext4: ext4,
            PlatonMethodProperty.ext10: ext10,
        ]
    }
    
    public init(language: String?, errorUrl: String?, formId: String?, ext1: String?, ext2: String?, ext3: String?, ext4: String?, ext10: String?) {
        self.language = language
        self.errorUrl = errorUrl
        self.formId = formId
        self.ext1 = ext1
        self.ext2 = ext2
        self.ext3 = ext3
        self.ext4 = ext4
        self.ext10 = ext10
    }
    
}

/// This class extends *PlatonWebOptions* and provide some new fields which handle representation of requests from *PlatonWebSaleAdapter*
public struct PlatonWebTokenSaleAdditional: PlatonParametersProtocol, PlatonWebTokenAdditionalProtocol {
    
    /// Localization language to be selected on the payment page by default
    var language: String?
    
    /// Optional URL to which the Buyer will be returned after three unsuccessful purchase attempts
    var errorUrl: String?
    
    /// Specific payment page identifier for web payments
    ///
    /// (In case the Client's account has multiple payment pages configured)
    var formId: String?
    
    /// Client Parameter 1
    var card_token: String?
    
    /// Client Parameter 2
    var ext2: String?
    
    /// Client Parameter 3
    var ext3: String?
    
    /// Client Parameter 4
    var ext4: String?
    
    public var platonParams: PlatonParams {
        return [
            PlatonMethodProperty.lang: language,
            PlatonMethodProperty.errorUrl: errorUrl,
            PlatonMethodProperty.formId: formId,
            PlatonMethodProperty.card_token: card_token,
            PlatonMethodProperty.ext2: ext2,
            PlatonMethodProperty.ext3: ext3,
            PlatonMethodProperty.ext4: ext4,
        ]
    }
    
    public init(language: String?, errorUrl: String?, formId: String?, card_token: String?, ext2: String?, ext3: String?, ext4: String?) {
        self.language = language
        self.errorUrl = errorUrl
        self.formId = formId
        self.card_token = card_token
        self.ext2 = ext2
        self.ext3 = ext3
        self.ext4 = ext4
    }
}



