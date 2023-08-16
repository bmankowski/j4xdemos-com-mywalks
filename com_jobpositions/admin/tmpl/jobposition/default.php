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

?>

<div class="page-header">
	<h1><?php echo $this->item->job_position_name; ?></h1>
</div>
<h2><?php echo Text::_('COM_JOBPOSITIONS_JOB_DESCRIPTION'); ?></h2>

<h2><?php echo $this->item->job_description; ?></h2> 

<?php /*

<div class="table-responsive">
  <table class="table table-striped">
  <thead>
    <tr>
 		<th scope="col"><?php echo Text::_('COM_JOBPOSITIONS_WALK_DATE'); ?></th>
		<th scope="col"><?php echo Text::_('COM_JOBPOSITIONS_WALK_WEATHER'); ?></th>
	</tr>
	</thead>
	<tbody>
	<?php foreach ($this->reports as $id => $report) : ?>
	<tr>
		<td><?php echo $report->date; ?></td>
		<td><?php echo $report->weather; ?></td>
	</tr>
	<?php endforeach; ?><?php //endif; ?>
	</tbody>
  </table>
</div>
*/?>

<a href="<?php echo Route::_('index.php?option=com_jobpositions'); ?>"><?php echo Text::_('COM_JOBPOSITIONS_WALK_BACK_TO_WALKS'); ?></a>
