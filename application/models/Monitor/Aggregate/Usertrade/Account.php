<?php 

/**
 * 平台数据实时监控系统
 *
 * @category ZtChart
 * @package ZtChart_Model_Monitor
 * @subpackage ZtChart_Model_Monitor_Aggregate
 * @copyright Copyright (c) 2004 - 2012 平台中心技术部
 * @author $Author: zhangweiwen $
 * @version $Id: Account.php 35652 2012-06-14 12:44:10Z zhangweiwen $
 */

/**
 * Usertrade日志数据按账号聚合类
 *
 * @see ZtChart_Model_Monitor_Aggregate_Usertrade
 * @name ZtChart_Model_Monitor_Aggregate_Usertrade_Account
 */
class ZtChart_Model_Monitor_Aggregate_Usertrade_Account extends ZtChart_Model_Monitor_Aggregate_Usertrade {
    
    /**
     * 产生Usertrade表按账号导出分组数据的SQL语句
     *
     * @see ZtChart_Model_Monitor_Aggregate_Usertrade::groupSQL()
     */
    public function groupSQL($start, $end, $pos) {
        return "SELECT LEFT(usertrade_datetime, {$pos}) AS dt, usertrade_account, usertrade_optype,
                            usertrade_gametype, usertrade_netbank, SUM(usertrade_point), ''
                FROM usertrade_account
                WHERE usertrade_datetime >= '{$start}' AND usertrade_datetime <= '{$end}'
                GROUP BY dt, usertrade_account, usertrade_optype, usertrade_gametype, usertrade_netbank
                INTO OUTFILE '%s'
                FIELDS TERMINATED BY ','";
    }
}