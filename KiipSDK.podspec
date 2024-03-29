#
# Be sure to run `pod lib lint NAME.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

license = <<EOT
BY CLICKING ON THE “ACCEPT” OR “”SUBMIT” BUTTON, YOU OR THE ENTITY OR COMPANY THAT YOU REPRESENT (“YOU,” “YOUR,” “YOURS” OR “LICENSEE”) ARE UNCONDITIONALLY CONSENTING TO BE BOUND BY, ARE BECOMING A PARTY TO THIS KIIP API LICENSE AGREEMENT (“AGREEMENT”), AND ARE HEREBY REPRESENTING AND WARRANTING THAT YOU ARE AUTHORIZED TO BIND LICENSEE. YOUR DOWNLOAD, INSTALLATION OR CONTINUED USE OF THE DOWNLOADED MATERIALS OR THE API (AS DEFINED BELOW) SHALL ALSO CONSTITUTE ASSENT TO THE TERMS OF THIS AGREEMENT. IF YOU DO NOT UNCONDITIONALLY AGREE TO ALL OF THE TERMS OF THIS AGREEMENT, CLICK THE “DECLINE” BUTTON AND YOU WILL HAVE NO RIGHT TO USE THE API. IF THESE TERMS ARE CONSIDERED AN OFFER, ACCEPTANCE IS EXPRESSLY LIMITED TO THESE ALL OF THESE TERMS TO THE EXCLUSION OF ALL OTHER TERMS.

1. Subject to full compliance with the terms of this Agreement, Kiip, Inc. (“we,” “us” “our” or “Kiip”) hereby grants you a limited, personal, non-sublicensable, non-transferable, royalty-free, nonexclusive license to use our application programming interface and related information and documentation (collectively, the “API”) and our API Software Development Kit (“SDK”) for the sole purpose of allowing you to build software applications (each an “App”) that communicate with Kiip’s proprietary rewards network service (the “Service”), and for other purposes authorized by us in writing.

2. Subject to full compliance with the terms of this Agreement, we hereby grant you a limited, personal, non-sublicensable, non-transferable, royalty-free, nonexclusive license to distribute the SDK in object code form only as part of an App, and only subject to an end-user license agreement which is at least as protective of our proprietary rights in the SDK as those contained in this agreement. Without limiting the foregoing, these terms and conditions must include terms for Kiip’s benefit regarding (a) restrictions on reverse engineering (to the maximum extent permitted by applicable law); (b) disclaimer of warranties; and (c) limitation of liability.

3. Except in connection with your limited right to distribute the SDK in object code form in accordance with Section 2, you agree not to disclose (or allow access to) the API or SDK (or any information derived from them) to any third party and will limit access to the API and SDK (and any derived information) to your employees who are developing the App. In support of this obligation, you will apply at least the same security that you use to protect your own most confidential information. You will not reverse engineer any aspect of the API or SDK or authorize or encourage anyone else to do so (except to the extent such restriction is prohibited by applicable law).

4. You agree not to block, disable, hide or limit in any way the ability of any device (whether or not it includes the App) to access the Service or any portion or functionality of or enabled by the Service.

5. Each App must (a) maintain 100% compatibility with the API, the SDK and the Service (including changes provided to you by Kiip, which shall be implemented in the App promptly thereafter), and (b) support HMAC, SHA1, GZIP and SSL encryption. If any App uses or implements an outdated version of the API, SDK or the Service, you acknowledge and agree that such App may not be able to communicate with the Service. You agree not to modify, extend, subset or superset the API to any extent. You understand that we may cease support of old versions or releases of the API or SDK.

6. KIIP PROVIDES THE API AND SDK “AS IS” AND WITHOUT WARRANTY OF ANY KIND, AND HEREBY DISCLAIMS ALL EXPRESS OR IMPLIED WARRANTIES, INCLUDING WITHOUT LIMITATION WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE, PERFORMANCE, ACCURACY, RELIABILITY, AND NON-INFRINGEMENT.

7. LIMITATION OF LIABILITY: UNDER NO CIRCUMSTANCES AND UNDER NO LEGAL THEORY, INCLUDING, BUT NOT LIMITED TO, TORT, CONTRACT, NEGLIGENCE, STRICT LIABILITY, OR OTHERWISE, SHALL KIIP OR ITS SUPPLIERS OR RESELLERS BE LIABLE TO YOU OR ANY OTHER PERSON FOR ANY INDIRECT, SPECIAL, INCIDENTAL, OR CONSEQUENTIAL DAMAGES INCLUDING, WITHOUT LIMITATION, DAMAGES FOR LOST PROFITS, LOSS OF GOODWILL, , OR DAMAGES RESULTING FROM LICENSEE’S USE OF THE API OR SDK. KIIP’S LIABILITY FOR DAMAGES OF ANY KIND WHATSOEVER ARISING OUT OF THIS AGREEMENT SHALL BE LIMITED TO $100. THE FOREGOING WILL NOT APPLY TO DAMAGES FOR BODILY INJURY THAT, UNDER APPLICABLE LAW, CANNOT BE SO LIMITED. THE FOREGOING LIMITATIONS SHALL APPLY EVEN IF YOU HAVE BEEN INFORMED OF THE POSSIBILITY OF SUCH DAMAGES. SOME STATES DO NOT ALLOW THE EXCLUSION OR LIMITATION OF INCIDENTAL OR CONSEQUENTIAL DAMAGES, SO THE ABOVE LIMITATION AND EXCLUSION MAY NOT APPLY TO YOU.

8. This Agreement represents the complete agreement concerning the subject matter hereof between the parties and supersedes all prior agreements and representations between them. This Agreement may be amended only by a writing executed by both parties. If any provision of this Agreement is held to be unenforceable for any reason, such provision shall be reformed only to the extent necessary to make it enforceable. The failure of Kiip to act with respect to a breach of this Agreement by Licensee or others does not constitute a waiver and shall not limit Kiip’s rights with respect to such breach or any subsequent breaches. This Agreement is personal to Licensee and may not be assigned or transferred for any reason whatsoever without Kiip’s consent and any action or conduct in violation of the foregoing shall be void and without effect. Kiip expressly reserves the right to assign this Agreement and to delegate any of its obligations hereunder. This Agreement shall be governed by and construed under California law as such law applies to agreements between California residents entered into and to be performed within California. The sole and exclusive jurisdiction and venue for actions arising under this Agreement shall be the State and Federal courts in San Francisco, California; both parties hereby agree to service of process in accordance with the rules of such courts. The party prevailing in any dispute under this Agreement shall be entitled to its costs and legal fees.
EOT

Pod::Spec.new do |s|
  s.name             = "KiipSDK"
  s.version          = "2.0.8"
  s.summary          = "KiipSDK."
  s.description      = <<-DESC
			Simple event based monetization library. Engage users with rewards from brands they love.
                       DESC
  s.homepage         = "http://www.kiip.com/"
  s.license          = { :type => 'Commercial', :text => license }
  s.author           = { "Kiip" => "http://www.kiip.com" }
  s.source           = { :git => "https://github.com/humajime/KiipSDKCocoaPods.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/kiip'

  s.platform     = :ios, '6.0'
  s.requires_arc = true
  s.default_subspec = 'KiipSDK'

  s.subspec 'KiipSDK' do |ss|
    ss.source_files = 'Kiip/*.h'
    ss.preserve_paths = 'Kiip/*.a'
    ss.libraries = "z", "Kiip"
    ss.frameworks = 'CoreTelephony', 'QuartzCore', 'SystemConfiguration', 'AdSupport', 'Passkit', 'MediaPlayer'
    ss.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/KiipSDK/Kiip/"' }
    ss.resource_bundle = { 'KiipSDKResources' => 'Kiip/*.png' }
  end
end
