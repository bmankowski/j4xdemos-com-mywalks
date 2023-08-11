<?php
/**
 * @package     Jobpositions.Site
 * @subpackage  com_jobpositions
 *
 * @copyright   Copyright (C) 2005 - 2019 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;

use Joomla\CMS\HTML\HTMLHelper;
use Joomla\CMS\Language\Text;
use Joomla\CMS\Layout\LayoutHelper;
use Joomla\CMS\Router\Route;
use itconnect\Component\Jobpositions\Site\Helper\RouteHelper as JobpositionsHelperRoute;

$listOrder = $this->escape($this->state->get('list.ordering'));
$listDirn  = $this->escape($this->state->get('list.direction'));

?>

<h1><?php echo Text::_('COM_JOBPOSITIONS_LIST_PAGE_HEADING'); ?></h1>

<form action="<?php echo Route::_('index.php?option=com_jobpositions'); ?>" method="post" name="adminForm" id="adminForm">

<?php echo LayoutHelper::render('joomla.searchtools.default', array('view' => $this)); ?>

<div class="table-responsive">
  <table class="table table-striped">
  <thead>
    <tr>
 		<th scope="col">
			<?php echo HTMLHelper::_('searchtools.sort', 'JGLOBAL_TITLE', 'a.job_position_name', $listDirn, $listOrder); ?>
		</th>
		<th scope="col">
			<?php echo HTMLHelper::_('searchtools.sort', 'COM_JOBPOSITIONS_LIST_LOCATION', 'a.job_location', $listDirn, $listOrder); ?>
		</th>
		<th scope="col"><?php echo Text::_('COM_JOBPOSITIONS_LIST_START_DATE'); ?></th>
	</tr>
	</thead>
	<tbody>
	<?php foreach ($this->items as $id => $item) :
		$slug = preg_replace('/[^a-z\d]/i', '-', $item->title);
		$slug = strtolower(str_replace(' ', '-', $slug));
	?>
	<tr>
		<td><a href="<?php echo Route::_(JobpositionsHelperRoute::getWalkRoute($item->id, $slug)); ?>">
		<?php echo $item->job_position_name; ?></a></td>
		<td><?php echo $item->job_location; ?></td>
		<td><?php echo $item->job_start_date; ?></td>
	</tr>
	<?php endforeach; ?><?php //endif; ?>
	</tbody>
  </table>
</div>

<?php echo $this->pagination->getListFooter(); ?>

<input type="hidden" name="task" value="">
<input type="hidden" name="boxchecked" value="0">
<?php echo HTMLHelper::_('form.token'); ?>

</form>