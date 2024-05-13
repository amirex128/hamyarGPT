<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * 
 *
 * @property int $id
 * @property int $features_active
 * @property string $features_title
 * @property string|null $features_description
 * @property int $generators_active
 * @property int $who_is_for_active
 * @property int $custom_templates_active
 * @property string $custom_templates_subtitle_one
 * @property string $custom_templates_subtitle_two
 * @property string $custom_templates_title
 * @property string|null $custom_templates_description
 * @property int $tools_active
 * @property string $tools_title
 * @property string|null $tools_description
 * @property int $how_it_works_active
 * @property string $how_it_works_title
 * @property int $testimonials_active
 * @property string $testimonials_title
 * @property string $testimonials_subtitle_one
 * @property string $testimonials_subtitle_two
 * @property int $pricing_active
 * @property string $pricing_title
 * @property string|null $pricing_description
 * @property string $pricing_save_percent
 * @property int $faq_active
 * @property string $faq_title
 * @property string $faq_subtitle
 * @property string $faq_text_one
 * @property string $faq_text_two
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property int $preheader_active
 * @property int $blog_active
 * @property string $blog_title
 * @property string $blog_subtitle
 * @property int $blog_posts_per_page
 * @property string $blog_button_text
 * @property string $blog_a_title
 * @property string $blog_a_subtitle
 * @property string $blog_a_description
 * @property int $blog_a_posts_per_page
 * @method static \Illuminate\Database\Eloquent\Builder|FrontendSectionsStatusses newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|FrontendSectionsStatusses newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|FrontendSectionsStatusses query()
 * @method static \Illuminate\Database\Eloquent\Builder|FrontendSectionsStatusses whereBlogADescription($value)
 * @method static \Illuminate\Database\Eloquent\Builder|FrontendSectionsStatusses whereBlogAPostsPerPage($value)
 * @method static \Illuminate\Database\Eloquent\Builder|FrontendSectionsStatusses whereBlogASubtitle($value)
 * @method static \Illuminate\Database\Eloquent\Builder|FrontendSectionsStatusses whereBlogATitle($value)
 * @method static \Illuminate\Database\Eloquent\Builder|FrontendSectionsStatusses whereBlogActive($value)
 * @method static \Illuminate\Database\Eloquent\Builder|FrontendSectionsStatusses whereBlogButtonText($value)
 * @method static \Illuminate\Database\Eloquent\Builder|FrontendSectionsStatusses whereBlogPostsPerPage($value)
 * @method static \Illuminate\Database\Eloquent\Builder|FrontendSectionsStatusses whereBlogSubtitle($value)
 * @method static \Illuminate\Database\Eloquent\Builder|FrontendSectionsStatusses whereBlogTitle($value)
 * @method static \Illuminate\Database\Eloquent\Builder|FrontendSectionsStatusses whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|FrontendSectionsStatusses whereCustomTemplatesActive($value)
 * @method static \Illuminate\Database\Eloquent\Builder|FrontendSectionsStatusses whereCustomTemplatesDescription($value)
 * @method static \Illuminate\Database\Eloquent\Builder|FrontendSectionsStatusses whereCustomTemplatesSubtitleOne($value)
 * @method static \Illuminate\Database\Eloquent\Builder|FrontendSectionsStatusses whereCustomTemplatesSubtitleTwo($value)
 * @method static \Illuminate\Database\Eloquent\Builder|FrontendSectionsStatusses whereCustomTemplatesTitle($value)
 * @method static \Illuminate\Database\Eloquent\Builder|FrontendSectionsStatusses whereFaqActive($value)
 * @method static \Illuminate\Database\Eloquent\Builder|FrontendSectionsStatusses whereFaqSubtitle($value)
 * @method static \Illuminate\Database\Eloquent\Builder|FrontendSectionsStatusses whereFaqTextOne($value)
 * @method static \Illuminate\Database\Eloquent\Builder|FrontendSectionsStatusses whereFaqTextTwo($value)
 * @method static \Illuminate\Database\Eloquent\Builder|FrontendSectionsStatusses whereFaqTitle($value)
 * @method static \Illuminate\Database\Eloquent\Builder|FrontendSectionsStatusses whereFeaturesActive($value)
 * @method static \Illuminate\Database\Eloquent\Builder|FrontendSectionsStatusses whereFeaturesDescription($value)
 * @method static \Illuminate\Database\Eloquent\Builder|FrontendSectionsStatusses whereFeaturesTitle($value)
 * @method static \Illuminate\Database\Eloquent\Builder|FrontendSectionsStatusses whereGeneratorsActive($value)
 * @method static \Illuminate\Database\Eloquent\Builder|FrontendSectionsStatusses whereHowItWorksActive($value)
 * @method static \Illuminate\Database\Eloquent\Builder|FrontendSectionsStatusses whereHowItWorksTitle($value)
 * @method static \Illuminate\Database\Eloquent\Builder|FrontendSectionsStatusses whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|FrontendSectionsStatusses wherePreheaderActive($value)
 * @method static \Illuminate\Database\Eloquent\Builder|FrontendSectionsStatusses wherePricingActive($value)
 * @method static \Illuminate\Database\Eloquent\Builder|FrontendSectionsStatusses wherePricingDescription($value)
 * @method static \Illuminate\Database\Eloquent\Builder|FrontendSectionsStatusses wherePricingSavePercent($value)
 * @method static \Illuminate\Database\Eloquent\Builder|FrontendSectionsStatusses wherePricingTitle($value)
 * @method static \Illuminate\Database\Eloquent\Builder|FrontendSectionsStatusses whereTestimonialsActive($value)
 * @method static \Illuminate\Database\Eloquent\Builder|FrontendSectionsStatusses whereTestimonialsSubtitleOne($value)
 * @method static \Illuminate\Database\Eloquent\Builder|FrontendSectionsStatusses whereTestimonialsSubtitleTwo($value)
 * @method static \Illuminate\Database\Eloquent\Builder|FrontendSectionsStatusses whereTestimonialsTitle($value)
 * @method static \Illuminate\Database\Eloquent\Builder|FrontendSectionsStatusses whereToolsActive($value)
 * @method static \Illuminate\Database\Eloquent\Builder|FrontendSectionsStatusses whereToolsDescription($value)
 * @method static \Illuminate\Database\Eloquent\Builder|FrontendSectionsStatusses whereToolsTitle($value)
 * @method static \Illuminate\Database\Eloquent\Builder|FrontendSectionsStatusses whereUpdatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|FrontendSectionsStatusses whereWhoIsForActive($value)
 * @mixin \Eloquent
 */
class FrontendSectionsStatusses extends Model
{
    use HasFactory;

    protected $table = 'frontend_sections_statuses_titles';
}
