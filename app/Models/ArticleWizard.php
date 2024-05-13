<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * 
 *
 * @property int $id
 * @property int|null $user_id
 * @property string $keywords
 * @property string $extra_keywords
 * @property string $topic_keywords
 * @property string $title
 * @property string $extra_titles
 * @property string $topic_title
 * @property string $language
 * @property string $tone
 * @property string $image_style
 * @property int $image_count
 * @property string $outline
 * @property string $extra_outlines
 * @property string $topic_outline
 * @property int $current_step
 * @property string $result
 * @property string $image
 * @property string $extra_images
 * @property string $topic_image
 * @property int $generated_count
 * @property float $creativity
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @method static \Illuminate\Database\Eloquent\Builder|ArticleWizard newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|ArticleWizard newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|ArticleWizard query()
 * @method static \Illuminate\Database\Eloquent\Builder|ArticleWizard whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ArticleWizard whereCreativity($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ArticleWizard whereCurrentStep($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ArticleWizard whereExtraImages($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ArticleWizard whereExtraKeywords($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ArticleWizard whereExtraOutlines($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ArticleWizard whereExtraTitles($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ArticleWizard whereGeneratedCount($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ArticleWizard whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ArticleWizard whereImage($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ArticleWizard whereImageCount($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ArticleWizard whereImageStyle($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ArticleWizard whereKeywords($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ArticleWizard whereLanguage($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ArticleWizard whereOutline($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ArticleWizard whereResult($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ArticleWizard whereTitle($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ArticleWizard whereTone($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ArticleWizard whereTopicImage($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ArticleWizard whereTopicKeywords($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ArticleWizard whereTopicOutline($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ArticleWizard whereTopicTitle($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ArticleWizard whereUpdatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ArticleWizard whereUserId($value)
 * @mixin \Eloquent
 */
class ArticleWizard extends Model
{
    protected $table = 'article_wizard';

    protected $guarded = [];
}
