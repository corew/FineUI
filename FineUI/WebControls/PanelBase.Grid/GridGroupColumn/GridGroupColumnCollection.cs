﻿
#region Comment

/*
 * Project：    FineUI
 * 
 * FileName:    GridGroupColumnCollection.cs
 * CreatedOn:   2012-05-29
 * CreatedBy:   30372245@qq.com
 * 
 * 
 * Description：
 *      ->
 *   
 * History：
 *      ->
 * 
 * 
 * 
 * 
 */

#endregion

using System;
using System.Xml;
using System.Text;
using System.Collections;
using System.ComponentModel;
using System.Collections.ObjectModel;


namespace FineUI
{
    /// <summary>
    /// 表格分组列集合
    /// </summary>
    public class GridGroupColumnCollection : BaseCollection<GridGroupColumn>
    {
         /// <summary>
        /// 构造函数
        /// </summary>
        /// <param name="parent">父控件实例</param>
        public GridGroupColumnCollection(ControlBase parent)
            : base(parent)
        {

        }

        /*
        private Grid _grid;

        /// <summary>
        /// 构造函数
        /// </summary>
        /// <param name="grid">表格实例</param>
        public GridGroupColumnCollection(Grid grid)
        {
            _grid = grid;
        }

        protected override void InsertItem(int index, GridGroupColumn item)
        {
            item.Grid = _grid;

            if (_grid != null)
            {
                ResolveChildren(item);
            }

            base.InsertItem(index, item);
        }



        /// <summary>
        /// 设置每个子节点的Grid实例
        /// </summary>
        /// <param name="node"></param>
        private void ResolveChildren(GridGroupColumn column)
        {
            if (column.Columns.Count > 0)
            {
                foreach (GridColumn subColumn in column.Columns)
                {
                    _grid.AllColumnsInternal.Add(subColumn);
                }
            }
            else if(column.GroupColumns.Count > 0)
            {
                foreach (GridGroupColumn subColumn in column.GroupColumns)
                {
                    ResolveChildren(subColumn);
                }
            }
        }

        */

    }
}



