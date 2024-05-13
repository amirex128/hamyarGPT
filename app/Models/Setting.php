<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * 
 *
 * @property int $id
 * @property string|null $invoice_currency
 * @property string|null $invoice_name
 * @property string|null $invoice_website
 * @property string|null $invoice_address
 * @property string|null $invoice_city
 * @property string|null $invoice_state
 * @property string|null $invoice_postal
 * @property string|null $invoice_country
 * @property string|null $invoice_phone
 * @property string|null $invoice_vat
 * @property string $default_currency
 * @property string|null $tax_rate
 * @property string $stripe_active
 * @property string|null $stripe_key
 * @property string|null $stripe_secret
 * @property string $stripe_base_url
 * @property string $bank_transfer_active
 * @property string|null $bank_transfer_instructions
 * @property string|null $bank_transfer_informations
 * @property string $site_name
 * @property string $site_url
 * @property string|null $site_email
 * @property string $google_analytics_active
 * @property string|null $google_analytics_code
 * @property string $logo
 * @property string|null $favicon
 * @property string|null $meta_title
 * @property string|null $meta_description
 * @property int $facebook_active
 * @property string|null $facebook_api_key
 * @property string|null $facebook_api_secret
 * @property string|null $facebook_redirect_url
 * @property int $github_active
 * @property string|null $github_api_key
 * @property string|null $github_api_secret
 * @property string|null $github_redirect_url
 * @property int $google_active
 * @property string|null $google_api_key
 * @property string|null $google_api_secret
 * @property string|null $google_redirect_url
 * @property int $twitter_active
 * @property string|null $twitter_api_key
 * @property string|null $twitter_api_secret
 * @property string|null $twitter_redirect_url
 * @property int $register_active
 * @property string $default_country
 * @property string|null $smtp_host
 * @property string|null $smtp_port
 * @property string|null $smtp_username
 * @property string|null $smtp_password
 * @property string|null $smtp_email
 * @property string|null $smtp_sender_name
 * @property string $smtp_encryption
 * @property string|null $openai_api_secret
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property string $logo_path
 * @property string|null $favicon_path
 * @property string $openai_default_model
 * @property string $openai_default_language
 * @property string $openai_default_tone_of_voice
 * @property string $openai_default_creativity
 * @property string $openai_max_input_length
 * @property string $openai_max_output_length
 * @property string $affiliate_minimum_withdrawal
 * @property string $affiliate_commission_percentage
 * @property int $frontend_pricing_section
 * @property int $frontend_custom_templates_section
 * @property int $frontend_business_partners_section
 * @property string|null $frontend_additional_url
 * @property string|null $frontend_custom_js
 * @property string|null $frontend_custom_css
 * @property string|null $frontend_footer_facebook
 * @property string|null $frontend_footer_twitter
 * @property string|null $frontend_footer_instagram
 * @property float $script_version
 * @property string $logo_collapsed
 * @property string $logo_collapsed_path
 * @property string $stripe_status_for_now
 * @property string $logo_dark
 * @property string|null $logo_dashboard
 * @property string|null $logo_dashboard_dark
 * @property string $logo_collapsed_dark
 * @property string|null $logo_2x
 * @property string|null $logo_dark_2x
 * @property string|null $logo_dashboard_2x
 * @property string|null $logo_dashboard_dark_2x
 * @property string|null $logo_collapsed_2x
 * @property string|null $logo_collapsed_dark_2x
 * @property string $logo_dark_path
 * @property string|null $logo_dashboard_path
 * @property string|null $logo_dashboard_dark_path
 * @property string $logo_collapsed_dark_path
 * @property string|null $logo_2x_path
 * @property string|null $logo_dark_2x_path
 * @property string|null $logo_dashboard_2x_path
 * @property string|null $logo_dashboard_dark_2x_path
 * @property string|null $logo_collapsed_2x_path
 * @property string|null $logo_collapsed_dark_2x_path
 * @property int $feature_ai_writer
 * @property int $feature_ai_image
 * @property int $feature_ai_chat
 * @property int $feature_ai_code
 * @property int $feature_ai_voice_clone
 * @property int $feature_ai_speech_to_text
 * @property int $feature_affilates
 * @property string|null $logo_sticky
 * @property string|null $logo_sticky_path
 * @property string|null $logo_sticky_2x
 * @property string|null $logo_sticky_2x_path
 * @property string|null $meta_keywords
 * @property int $gdpr_status
 * @property string $gdpr_button
 * @property string|null $gdpr_content
 * @property string|null $menu_options
 * @property int $privacy_enable
 * @property int $privacy_enable_login
 * @property string|null $privacy_content
 * @property string|null $terms_content
 * @property int $login_without_confirmation
 * @property int|null $feature_ai_voiceover
 * @property string|null $gcs_file
 * @property string|null $gcs_name
 * @property string|null $frontend_code_before_head
 * @property string|null $frontend_code_before_body
 * @property string|null $dashboard_code_before_head
 * @property string|null $dashboard_code_before_body
 * @property string $free_plan
 * @property int $feature_ai_article_wizard
 * @property int $feature_ai_vision
 * @property int $feature_ai_pdf
 * @property int $feature_ai_chat_image
 * @property int $mobile_payment_active
 * @property int $feature_ai_rewriter
 * @property int $feature_ai_youtube
 * @property int $feature_ai_rss
 * @property int $team_functionality
 * @property int $feature_ai_advanced_editor
 * @property int $user_count
 * @property array|null $free_open_ai_items
 * @property int $user_api_option
 * @property string|null $auth_view_options
 * @method static \Illuminate\Database\Eloquent\Builder|Setting newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Setting newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Setting query()
 * @method static \Illuminate\Database\Eloquent\Builder|Setting whereAffiliateCommissionPercentage($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Setting whereAffiliateMinimumWithdrawal($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Setting whereAuthViewOptions($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Setting whereBankTransferActive($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Setting whereBankTransferInformations($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Setting whereBankTransferInstructions($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Setting whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Setting whereDashboardCodeBeforeBody($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Setting whereDashboardCodeBeforeHead($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Setting whereDefaultCountry($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Setting whereDefaultCurrency($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Setting whereFacebookActive($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Setting whereFacebookApiKey($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Setting whereFacebookApiSecret($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Setting whereFacebookRedirectUrl($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Setting whereFavicon($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Setting whereFaviconPath($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Setting whereFeatureAffilates($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Setting whereFeatureAiAdvancedEditor($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Setting whereFeatureAiArticleWizard($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Setting whereFeatureAiChat($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Setting whereFeatureAiChatImage($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Setting whereFeatureAiCode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Setting whereFeatureAiImage($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Setting whereFeatureAiPdf($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Setting whereFeatureAiRewriter($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Setting whereFeatureAiRss($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Setting whereFeatureAiSpeechToText($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Setting whereFeatureAiVision($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Setting whereFeatureAiVoiceClone($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Setting whereFeatureAiVoiceover($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Setting whereFeatureAiWriter($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Setting whereFeatureAiYoutube($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Setting whereFreeOpenAiItems($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Setting whereFreePlan($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Setting whereFrontendAdditionalUrl($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Setting whereFrontendBusinessPartnersSection($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Setting whereFrontendCodeBeforeBody($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Setting whereFrontendCodeBeforeHead($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Setting whereFrontendCustomCss($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Setting whereFrontendCustomJs($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Setting whereFrontendCustomTemplatesSection($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Setting whereFrontendFooterFacebook($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Setting whereFrontendFooterInstagram($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Setting whereFrontendFooterTwitter($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Setting whereFrontendPricingSection($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Setting whereGcsFile($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Setting whereGcsName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Setting whereGdprButton($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Setting whereGdprContent($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Setting whereGdprStatus($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Setting whereGithubActive($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Setting whereGithubApiKey($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Setting whereGithubApiSecret($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Setting whereGithubRedirectUrl($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Setting whereGoogleActive($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Setting whereGoogleAnalyticsActive($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Setting whereGoogleAnalyticsCode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Setting whereGoogleApiKey($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Setting whereGoogleApiSecret($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Setting whereGoogleRedirectUrl($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Setting whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Setting whereInvoiceAddress($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Setting whereInvoiceCity($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Setting whereInvoiceCountry($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Setting whereInvoiceCurrency($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Setting whereInvoiceName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Setting whereInvoicePhone($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Setting whereInvoicePostal($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Setting whereInvoiceState($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Setting whereInvoiceVat($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Setting whereInvoiceWebsite($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Setting whereLoginWithoutConfirmation($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Setting whereLogo($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Setting whereLogo2x($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Setting whereLogo2xPath($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Setting whereLogoCollapsed($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Setting whereLogoCollapsed2x($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Setting whereLogoCollapsed2xPath($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Setting whereLogoCollapsedDark($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Setting whereLogoCollapsedDark2x($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Setting whereLogoCollapsedDark2xPath($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Setting whereLogoCollapsedDarkPath($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Setting whereLogoCollapsedPath($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Setting whereLogoDark($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Setting whereLogoDark2x($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Setting whereLogoDark2xPath($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Setting whereLogoDarkPath($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Setting whereLogoDashboard($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Setting whereLogoDashboard2x($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Setting whereLogoDashboard2xPath($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Setting whereLogoDashboardDark($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Setting whereLogoDashboardDark2x($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Setting whereLogoDashboardDark2xPath($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Setting whereLogoDashboardDarkPath($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Setting whereLogoDashboardPath($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Setting whereLogoPath($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Setting whereLogoSticky($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Setting whereLogoSticky2x($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Setting whereLogoSticky2xPath($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Setting whereLogoStickyPath($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Setting whereMenuOptions($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Setting whereMetaDescription($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Setting whereMetaKeywords($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Setting whereMetaTitle($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Setting whereMobilePaymentActive($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Setting whereOpenaiApiSecret($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Setting whereOpenaiDefaultCreativity($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Setting whereOpenaiDefaultLanguage($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Setting whereOpenaiDefaultModel($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Setting whereOpenaiDefaultToneOfVoice($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Setting whereOpenaiMaxInputLength($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Setting whereOpenaiMaxOutputLength($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Setting wherePrivacyContent($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Setting wherePrivacyEnable($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Setting wherePrivacyEnableLogin($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Setting whereRegisterActive($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Setting whereScriptVersion($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Setting whereSiteEmail($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Setting whereSiteName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Setting whereSiteUrl($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Setting whereSmtpEmail($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Setting whereSmtpEncryption($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Setting whereSmtpHost($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Setting whereSmtpPassword($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Setting whereSmtpPort($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Setting whereSmtpSenderName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Setting whereSmtpUsername($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Setting whereStripeActive($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Setting whereStripeBaseUrl($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Setting whereStripeKey($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Setting whereStripeSecret($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Setting whereStripeStatusForNow($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Setting whereTaxRate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Setting whereTeamFunctionality($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Setting whereTermsContent($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Setting whereTwitterActive($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Setting whereTwitterApiKey($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Setting whereTwitterApiSecret($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Setting whereTwitterRedirectUrl($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Setting whereUpdatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Setting whereUserApiOption($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Setting whereUserCount($value)
 * @mixin \Eloquent
 */
class Setting extends Model
{
    protected  $guarded =  [];

    protected $casts = [
        'free_open_ai_items' => 'array'
    ];
}
