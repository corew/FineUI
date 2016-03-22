using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Text;

namespace FineUI
{
    /// <summary>
    /// Grid列数据类型
    /// </summary>
    public enum GridColumnDataType
    {
        /// <summary>
        /// default
        /// </summary>
        Default,

        /// <summary>
        /// booleancolumn
        /// </summary>
        [Description("booleancolumn")]
        Boolean,

        /// <summary>
        /// datecolumn
        /// </summary>
        [Description("datecolumn")]
        Date,

        /// <summary>
        /// numbercolumn
        /// </summary>
        [Description("numbercolumn")]
        Number,
    }

    /// <summary>
    /// GridColumnDataType帮助类
    /// </summary>
    public class GridColumnDataTypeHelper
    {
        /// <summary>
        /// 获得js使用的名称
        /// </summary>
        /// <param name="type"></param>
        /// <returns></returns>
        public static string GetName(GridColumnDataType type)
        {
            switch (type)
            {
                case GridColumnDataType.Default:
                    return string.Empty;
                case GridColumnDataType.Boolean:
                    return "booleancolumn";
                case GridColumnDataType.Date:
                    return "datecolumn";
                case GridColumnDataType.Number:
                    return "numbercolumn";
                default:
                    return string.Empty;
            }
        }
    }
}
