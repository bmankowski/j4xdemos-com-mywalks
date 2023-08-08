<?php
/**
 * @package     Jobpositions.Administrator
 * @subpackage  com_jobpositions
 *
 * @copyright   Copyright (C) 2005 - 2019 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */

namespace itconnect\Component\Jobpositions\Administrator\Helper;

defined('_JEXEC') or die;

use Joomla\CMS\Factory;
use Joomla\Database\ParameterType;

/**
 * Jobpositions component helper.
 *
 * @since  4.0
 */
class JobpositionsHelper
{
	public static function getWalkTitle($id)
	{
		if (empty($id))
		{
			// throw an error or ...
			return false;
		}
		$db = Factory::getDbo();
		$query = $db->getQuery(true);
		$query->select($db->quoteName('title'))
		->from($db->quoteName('#__jobpositions'))
		->where('id = :id')
		->bind(':id', $id, ParameterType::INTEGER);
		$db->setQuery($query);
		return $db->loadObject();
	}
}