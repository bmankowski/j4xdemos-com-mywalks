<?php
/**
 * @package     Jobpositions.Site
 * @subpackage  com_jobpositions
 *
 * @copyright   Copyright (C) 2005 - 2019 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */
defined('_JEXEC') or die;

use Joomla\CMS\Language\Text;
use Joomla\CMS\Router\Route;
use itconnect\Component\Jobpositions\Site\Helper\RouteHelper as JobpositionsHelperRoute;

$listOrder = $this->escape($this->state->get('list.ordering'));
$listDirn = $this->escape($this->state->get('list.direction'));
?>
<script src="/getProjects/filter_list.js" defer=""></script>



<div class="skk_filters">
    <div class="skk_filter_option">
        <div>
            <p><input class="skk_filters_input_search" id="filterInput" placeholder="   Search for position or location..." type="text"></p>

        </div>
    </div>
</div>  
<dl class="search-results" id="myData">

    <div class="job-box2" id="nooffers" style="display: none;"><div class="jg_jobtitle">Brak ofert pracy o wybranych parametrach</div></div>
    <?php
    foreach ($this->items as $id => $item) :
        $slug = strtolower(str_replace(' ', '-', preg_replace('/[^a-z\d]/i', '-', $item->job_position_name.$item->job_location)));
        $route=Route::_(JobpositionsHelperRoute::getWalkRoute($item->id, $slug));
        ?>
        <div class="job-box1" searchData="<?php echo $slug;?>"> 
            <div class="jg_jobtitle">
                <a href="<?php echo $route?>">
                    <?php echo $item->job_position_name; ?>
                </a>
            </div>
            <div class="jg_location eng">
                <div class="itccel_2"> 
                    <span class="title"></span><span class="value"><?php echo $item->job_location; ?></span>
                </div>
            </div>
            <div class="jg_posting_date"><?php echo $item->job_start_date; ?></div>
            <div class="zobacz-oferte">
                <a href="<?php echo $route?>" target="_blank"><?php echo Text::_('COM_JOBPOSITIONS_SHOW_OFFER'); ?></a>
            </div>
        </div>
    <?php endforeach; ?><?php //endif;  ?>

</dl>