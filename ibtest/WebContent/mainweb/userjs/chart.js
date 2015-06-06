/**
 * 绘制坐标系数据图
 */
$(function() {
	var session = $("#jspSession").val();
	if(session =="null"){
		window.location.href = "../../login.jsp";// 当前页面打开
    }
	var sin = [], cos = [], num = [];jspSession
	// 定义参数及类型
	
	for (var i = 0; i < 21; i += 0.5) {
		sin.push([ i, Math.sin(i) ]);
		cos.push([ i, Math.cos(i) ]);
		num.push([ i, (i / i) - 0.5 ]);
	}
	
	// plot模板函数使用
	var plot = $.plot($(".chart"), [ {
		data : sin,
		label : "sin(x)"
	}, {
		data : cos,
		label : "cos(x)"
	}, {
		data : num,
		label : "num(x)"
	} ], {
		series : {
			lines : {
				show : true
			},
			points : {
				show : true
			}
		},
		grid : {
			hoverable : true,
			clickable : true
		},
		yaxis : {
			min : -1.1,
			max : 1.1
		},
		xaxis : {
			min : 0,
			max : 20
		}
	});

	// 鼠标触发事件格式调整
	function showTooltip(x, y, contents) {
		$('<div id="tooltip" class="tooltip">' + contents + '</div>').css({
			position : 'absolute',
			display : 'none',
			top : y + 5,
			left : x + 5,
			border : '1px solid #000',
			padding : '2px',
			'z-index' : '9999',
			'background-color' : '#202020',
			'color' : '#fff',
			'font-size' : '11px',
			opacity : 0.8
		}).appendTo("body").fadeIn(200);
	}

	var previousPoint = null;
	$(".chart")
			.bind(
					"plothover",
					function(event, pos, item) {
						$("#x").text(pos.x.toFixed(2));
						$("#y").text(pos.y.toFixed(2));

						if ($(".chart").length > 0) {
							if (item) {
								if (previousPoint != item.dataIndex) {
									previousPoint = item.dataIndex;

									$("#tooltip").remove();
									var x = item.datapoint[0].toFixed(2), y = item.datapoint[1]
											.toFixed(2);

									showTooltip(item.pageX, item.pageY,
											item.series.label + " of " + x
													+ " = " + y);
								}
							} else {
								$("#tooltip").remove();
								previousPoint = null;
							}
						}
					});

	$(".chart").bind(
			"plotclick",
			function(event, pos, item) {
				if (item) {
					$("#clickdata").text(
							"You clicked point " + item.dataIndex + " in "
									+ item.series.label + ".");
					plot.highlight(item.series, item.datapoint);
				}
			});
});
