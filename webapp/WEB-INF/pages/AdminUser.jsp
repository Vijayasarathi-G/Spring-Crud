<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page session="false"%>
<html>
<head>
<title>Dashboard</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<style>
@import
	"https://fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic&subset=latin,cyrillic"
	;
/* -- import Roboto Font ---------------------------- */
/* -- You can use this tables in Bootstrap (v3) projects. -- */
/* -- Box model ------------------------------- */
*, *:after, *:before {
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
}
/* -- Demo style ------------------------------- */
html, body {
	position: relative;
	min-height: 100%;
	height: 100%;
}

html {
	position: relative;
	overflow-x: hidden;
	margin: 16px;
	padding: 0;
	min-height: 100%;
	font-size: 62.5%;
}

body {
	font-family: 'RobotoDraft', 'Roboto', 'Helvetica Neue, Helvetica, Arial',
		sans-serif;
	font-style: normal;
	font-weight: 300;
	font-size: 1.4rem;
	line-height: 2rem;
	letter-spacing: 0.01rem;
	color: #212121;
	background-color: #f5f5f5;
	-webkit-font-smoothing: antialiased;
	-moz-osx-font-smoothing: grayscale;
	text-rendering: optimizeLegibility;
}

#demo {
	margin: 20px auto;
	max-width: 960px;
}

#demo h1 {
	font-size: 2.4rem;
	line-height: 3.2rem;
	letter-spacing: 0;
	font-weight: 300;
	color: #212121;
	text-transform: inherit;
	margin-bottom: 1rem;
	text-align: center;
}

#demo h2 {
	font-size: 1.5rem;
	line-height: 2.8rem;
	letter-spacing: 0.01rem;
	font-weight: 400;
	color: #212121;
	text-align: center;
}

.shadow-z-1 {
	-webkit-box-shadow: 0 1px 3px 0 rgba(0, 0, 0, 0.12), 0 1px 2px 0
		rgba(0, 0, 0, 0.24);
	-moz-box-shadow: 0 1px 3px 0 rgba(0, 0, 0, 0.12), 0 1px 2px 0
		rgba(0, 0, 0, 0.24);
	box-shadow: 0 1px 3px 0 rgba(0, 0, 0, 0.12), 0 1px 2px 0
		rgba(0, 0, 0, 0.24);
}
/* -- Material Design Table style -------------- */
.table {
	width: 100%;
	max-width: 100%;
	margin-bottom: 2rem;
	background-color: #ffffff;
}

.table>thead>tr, .table>tbody>tr, .table>tfoot>tr {
	-webkit-transition: all 0.3s ease;
	-o-transition: all 0.3s ease;
	transition: all 0.3s ease;
}

.table>thead>tr>th, .table>tbody>tr>th, .table>tfoot>tr>th, .table>thead>tr>td,
	.table>tbody>tr>td, .table>tfoot>tr>td {
	text-align: left;
	padding: 1.6rem;
	vertical-align: top;
	border-top: 0;
	-webkit-transition: all 0.3s ease;
	-o-transition: all 0.3s ease;
	transition: all 0.3s ease;
}

.table>thead>tr>th {
	font-weight: 400;
	color: #757575;
	vertical-align: bottom;
	border-bottom: 1px solid rgba(0, 0, 0, 0.12);
}

.table>caption+thead>tr:first-child>th, .table>colgroup+thead>tr:first-child>th,
	.table>thead:first-child>tr:first-child>th, .table>caption+thead>tr:first-child>td,
	.table>colgroup+thead>tr:first-child>td, .table>thead:first-child>tr:first-child>td
	{
	border-top: 0;
}

.table>tbody+tbody {
	border-top: 1px solid rgba(0, 0, 0, 0.12);
}

.table .table {
	background-color: #ffffff;
}

.table .no-border {
	border: 0;
}

.table-condensed>thead>tr>th, .table-condensed>tbody>tr>th,
	.table-condensed>tfoot>tr>th, .table-condensed>thead>tr>td,
	.table-condensed>tbody>tr>td, .table-condensed>tfoot>tr>td {
	padding: 0.8rem;
}

.table-bordered {
	border: 0;
}

.table-bordered>thead>tr>th, .table-bordered>tbody>tr>th,
	.table-bordered>tfoot>tr>th, .table-bordered>thead>tr>td,
	.table-bordered>tbody>tr>td, .table-bordered>tfoot>tr>td {
	border: 0;
	border-bottom: 1px solid #e0e0e0;
}

.table-bordered>thead>tr>th, .table-bordered>thead>tr>td {
	border-bottom-width: 2px;
}

.table-striped>tbody>tr:nth-child(odd)>td, .table-striped>tbody>tr:nth-child(odd)>th
	{
	background-color: #f5f5f5;
}

.table-hover>tbody>tr:hover>td, .table-hover>tbody>tr:hover>th {
	background-color: rgba(0, 0, 0, 0.12);
}

@media screen and (max-width: 768px) {
	.table-responsive-vertical>.table {
		margin-bottom: 0;
		background-color: transparent;
	}
	.table-responsive-vertical>.table>thead, .table-responsive-vertical>.table>tfoot
		{
		display: none;
	}
	.table-responsive-vertical>.table>tbody {
		display: block;
	}
	.table-responsive-vertical>.table>tbody>tr {
		display: block;
		border: 1px solid #e0e0e0;
		border-radius: 2px;
		margin-bottom: 1.6rem;
	}
	.table-responsive-vertical>.table>tbody>tr>td {
		background-color: #ffffff;
		display: block;
		vertical-align: middle;
		text-align: right;
	}
	.table-responsive-vertical>.table>tbody>tr>td[data-title]:before {
		content: attr(data-title);
		float: left;
		font-size: inherit;
		font-weight: 400;
		color: #757575;
	}
	.table-responsive-vertical.shadow-z-1 {
		-webkit-box-shadow: none;
		-moz-box-shadow: none;
		box-shadow: none;
	}
	.table-responsive-vertical.shadow-z-1>.table>tbody>tr {
		border: none;
		-webkit-box-shadow: 0 1px 3px 0 rgba(0, 0, 0, 0.12), 0 1px 2px 0
			rgba(0, 0, 0, 0.24);
		-moz-box-shadow: 0 1px 3px 0 rgba(0, 0, 0, 0.12), 0 1px 2px 0
			rgba(0, 0, 0, 0.24);
		box-shadow: 0 1px 3px 0 rgba(0, 0, 0, 0.12), 0 1px 2px 0
			rgba(0, 0, 0, 0.24);
	}
	.table-responsive-vertical>.table-bordered {
		border: 0;
	}
	.table-responsive-vertical>.table-bordered>tbody>tr>td {
		border: 0;
		border-bottom: 1px solid #e0e0e0;
	}
	.table-responsive-vertical>.table-bordered>tbody>tr>td:last-child {
		border-bottom: 0;
	}
	.table-responsive-vertical>.table-striped>tbody>tr>td,
		.table-responsive-vertical>.table-striped>tbody>tr:nth-child(odd) {
		background-color: #ffffff;
	}
	.table-responsive-vertical>.table-striped>tbody>tr>td:nth-child(odd) {
		background-color: #f5f5f5;
	}
	.table-responsive-vertical>.table-hover>tbody>tr:hover>td,
		.table-responsive-vertical>.table-hover>tbody>tr:hover {
		background-color: #ffffff;
	}
	.table-responsive-vertical>.table-hover>tbody>tr>td:hover {
		background-color: rgba(0, 0, 0, 0.12);
	}
}

.table-striped.table-mc-red>tbody>tr:nth-child(odd)>td, .table-striped.table-mc-red>tbody>tr:nth-child(odd)>th
	{
	background-color: #fde0dc;
}

.table-hover.table-mc-red>tbody>tr:hover>td, .table-hover.table-mc-red>tbody>tr:hover>th
	{
	background-color: #f9bdbb;
}

@media screen and (max-width: 767px) {
	.table-responsive-vertical .table-striped.table-mc-red>tbody>tr>td,
		.table-responsive-vertical .table-striped.table-mc-red>tbody>tr:nth-child(odd)
		{
		background-color: #ffffff;
	}
	.table-responsive-vertical .table-striped.table-mc-red>tbody>tr>td:nth-child(odd)
		{
		background-color: #fde0dc;
	}
	.table-responsive-vertical .table-hover.table-mc-red>tbody>tr:hover>td,
		.table-responsive-vertical .table-hover.table-mc-red>tbody>tr:hover {
		background-color: #ffffff;
	}
	.table-responsive-vertical .table-hover.table-mc-red>tbody>tr>td:hover {
		background-color: #f9bdbb;
	}
}

.table-striped.table-mc-pink>tbody>tr:nth-child(odd)>td, .table-striped.table-mc-pink>tbody>tr:nth-child(odd)>th
	{
	background-color: #fce4ec;
}

.table-hover.table-mc-pink>tbody>tr:hover>td, .table-hover.table-mc-pink>tbody>tr:hover>th
	{
	background-color: #f8bbd0;
}

@media screen and (max-width: 767px) {
	.table-responsive-vertical .table-striped.table-mc-pink>tbody>tr>td,
		.table-responsive-vertical .table-striped.table-mc-pink>tbody>tr:nth-child(odd)
		{
		background-color: #ffffff;
	}
	.table-responsive-vertical .table-striped.table-mc-pink>tbody>tr>td:nth-child(odd)
		{
		background-color: #fce4ec;
	}
	.table-responsive-vertical .table-hover.table-mc-pink>tbody>tr:hover>td,
		.table-responsive-vertical .table-hover.table-mc-pink>tbody>tr:hover {
		background-color: #ffffff;
	}
	.table-responsive-vertical .table-hover.table-mc-pink>tbody>tr>td:hover
		{
		background-color: #f8bbd0;
	}
}

.table-striped.table-mc-purple>tbody>tr:nth-child(odd)>td,
	.table-striped.table-mc-purple>tbody>tr:nth-child(odd)>th {
	background-color: #f3e5f5;
}

.table-hover.table-mc-purple>tbody>tr:hover>td, .table-hover.table-mc-purple>tbody>tr:hover>th
	{
	background-color: #e1bee7;
}

@media screen and (max-width: 767px) {
	.table-responsive-vertical .table-striped.table-mc-purple>tbody>tr>td,
		.table-responsive-vertical .table-striped.table-mc-purple>tbody>tr:nth-child(odd)
		{
		background-color: #ffffff;
	}
	.table-responsive-vertical .table-striped.table-mc-purple>tbody>tr>td:nth-child(odd)
		{
		background-color: #f3e5f5;
	}
	.table-responsive-vertical .table-hover.table-mc-purple>tbody>tr:hover>td,
		.table-responsive-vertical .table-hover.table-mc-purple>tbody>tr:hover
		{
		background-color: #ffffff;
	}
	.table-responsive-vertical .table-hover.table-mc-purple>tbody>tr>td:hover
		{
		background-color: #e1bee7;
	}
}

.table-striped.table-mc-deep-purple>tbody>tr:nth-child(odd)>td,
	.table-striped.table-mc-deep-purple>tbody>tr:nth-child(odd)>th {
	background-color: #ede7f6;
}

.table-hover.table-mc-deep-purple>tbody>tr:hover>td, .table-hover.table-mc-deep-purple>tbody>tr:hover>th
	{
	background-color: #d1c4e9;
}

@media screen and (max-width: 767px) {
	.table-responsive-vertical .table-striped.table-mc-deep-purple>tbody>tr>td,
		.table-responsive-vertical .table-striped.table-mc-deep-purple>tbody>tr:nth-child(odd)
		{
		background-color: #ffffff;
	}
	.table-responsive-vertical .table-striped.table-mc-deep-purple>tbody>tr>td:nth-child(odd)
		{
		background-color: #ede7f6;
	}
	.table-responsive-vertical .table-hover.table-mc-deep-purple>tbody>tr:hover>td,
		.table-responsive-vertical .table-hover.table-mc-deep-purple>tbody>tr:hover
		{
		background-color: #ffffff;
	}
	.table-responsive-vertical .table-hover.table-mc-deep-purple>tbody>tr>td:hover
		{
		background-color: #d1c4e9;
	}
}

.table-striped.table-mc-indigo>tbody>tr:nth-child(odd)>td,
	.table-striped.table-mc-indigo>tbody>tr:nth-child(odd)>th {
	background-color: #e8eaf6;
}

.table-hover.table-mc-indigo>tbody>tr:hover>td, .table-hover.table-mc-indigo>tbody>tr:hover>th
	{
	background-color: #c5cae9;
}

@media screen and (max-width: 767px) {
	.table-responsive-vertical .table-striped.table-mc-indigo>tbody>tr>td,
		.table-responsive-vertical .table-striped.table-mc-indigo>tbody>tr:nth-child(odd)
		{
		background-color: #ffffff;
	}
	.table-responsive-vertical .table-striped.table-mc-indigo>tbody>tr>td:nth-child(odd)
		{
		background-color: #e8eaf6;
	}
	.table-responsive-vertical .table-hover.table-mc-indigo>tbody>tr:hover>td,
		.table-responsive-vertical .table-hover.table-mc-indigo>tbody>tr:hover
		{
		background-color: #ffffff;
	}
	.table-responsive-vertical .table-hover.table-mc-indigo>tbody>tr>td:hover
		{
		background-color: #c5cae9;
	}
}

.table-striped.table-mc-blue>tbody>tr:nth-child(odd)>td, .table-striped.table-mc-blue>tbody>tr:nth-child(odd)>th
	{
	background-color: #e7e9fd;
}

.table-hover.table-mc-blue>tbody>tr:hover>td, .table-hover.table-mc-blue>tbody>tr:hover>th
	{
	background-color: #d0d9ff;
}

@media screen and (max-width: 767px) {
	.table-responsive-vertical .table-striped.table-mc-blue>tbody>tr>td,
		.table-responsive-vertical .table-striped.table-mc-blue>tbody>tr:nth-child(odd)
		{
		background-color: #ffffff;
	}
	.table-responsive-vertical .table-striped.table-mc-blue>tbody>tr>td:nth-child(odd)
		{
		background-color: #e7e9fd;
	}
	.table-responsive-vertical .table-hover.table-mc-blue>tbody>tr:hover>td,
		.table-responsive-vertical .table-hover.table-mc-blue>tbody>tr:hover {
		background-color: #ffffff;
	}
	.table-responsive-vertical .table-hover.table-mc-blue>tbody>tr>td:hover
		{
		background-color: #d0d9ff;
	}
}

.table-striped.table-mc-light-blue>tbody>tr:nth-child(odd)>td,
	.table-striped.table-mc-light-blue>tbody>tr:nth-child(odd)>th {
	background-color: #e1f5fe;
}

.table-hover.table-mc-light-blue>tbody>tr:hover>td, .table-hover.table-mc-light-blue>tbody>tr:hover>th
	{
	background-color: #b3e5fc;
}

@media screen and (max-width: 767px) {
	.table-responsive-vertical .table-striped.table-mc-light-blue>tbody>tr>td,
		.table-responsive-vertical .table-striped.table-mc-light-blue>tbody>tr:nth-child(odd)
		{
		background-color: #ffffff;
	}
	.table-responsive-vertical .table-striped.table-mc-light-blue>tbody>tr>td:nth-child(odd)
		{
		background-color: #e1f5fe;
	}
	.table-responsive-vertical .table-hover.table-mc-light-blue>tbody>tr:hover>td,
		.table-responsive-vertical .table-hover.table-mc-light-blue>tbody>tr:hover
		{
		background-color: #ffffff;
	}
	.table-responsive-vertical .table-hover.table-mc-light-blue>tbody>tr>td:hover
		{
		background-color: #b3e5fc;
	}
}

.table-striped.table-mc-cyan>tbody>tr:nth-child(odd)>td, .table-striped.table-mc-cyan>tbody>tr:nth-child(odd)>th
	{
	background-color: #e0f7fa;
}

.table-hover.table-mc-cyan>tbody>tr:hover>td, .table-hover.table-mc-cyan>tbody>tr:hover>th
	{
	background-color: #b2ebf2;
}

@media screen and (max-width: 767px) {
	.table-responsive-vertical .table-striped.table-mc-cyan>tbody>tr>td,
		.table-responsive-vertical .table-striped.table-mc-cyan>tbody>tr:nth-child(odd)
		{
		background-color: #ffffff;
	}
	.table-responsive-vertical .table-striped.table-mc-cyan>tbody>tr>td:nth-child(odd)
		{
		background-color: #e0f7fa;
	}
	.table-responsive-vertical .table-hover.table-mc-cyan>tbody>tr:hover>td,
		.table-responsive-vertical .table-hover.table-mc-cyan>tbody>tr:hover {
		background-color: #ffffff;
	}
	.table-responsive-vertical .table-hover.table-mc-cyan>tbody>tr>td:hover
		{
		background-color: #b2ebf2;
	}
}

.table-striped.table-mc-teal>tbody>tr:nth-child(odd)>td, .table-striped.table-mc-teal>tbody>tr:nth-child(odd)>th
	{
	background-color: #e0f2f1;
}

.table-hover.table-mc-teal>tbody>tr:hover>td, .table-hover.table-mc-teal>tbody>tr:hover>th
	{
	background-color: #b2dfdb;
}

@media screen and (max-width: 767px) {
	.table-responsive-vertical .table-striped.table-mc-teal>tbody>tr>td,
		.table-responsive-vertical .table-striped.table-mc-teal>tbody>tr:nth-child(odd)
		{
		background-color: #ffffff;
	}
	.table-responsive-vertical .table-striped.table-mc-teal>tbody>tr>td:nth-child(odd)
		{
		background-color: #e0f2f1;
	}
	.table-responsive-vertical .table-hover.table-mc-teal>tbody>tr:hover>td,
		.table-responsive-vertical .table-hover.table-mc-teal>tbody>tr:hover {
		background-color: #ffffff;
	}
	.table-responsive-vertical .table-hover.table-mc-teal>tbody>tr>td:hover
		{
		background-color: #b2dfdb;
	}
}

.table-striped.table-mc-green>tbody>tr:nth-child(odd)>td, .table-striped.table-mc-green>tbody>tr:nth-child(odd)>th
	{
	background-color: #d0f8ce;
}

.table-hover.table-mc-green>tbody>tr:hover>td, .table-hover.table-mc-green>tbody>tr:hover>th
	{
	background-color: #a3e9a4;
}

@media screen and (max-width: 767px) {
	.table-responsive-vertical .table-striped.table-mc-green>tbody>tr>td,
		.table-responsive-vertical .table-striped.table-mc-green>tbody>tr:nth-child(odd)
		{
		background-color: #ffffff;
	}
	.table-responsive-vertical .table-striped.table-mc-green>tbody>tr>td:nth-child(odd)
		{
		background-color: #d0f8ce;
	}
	.table-responsive-vertical .table-hover.table-mc-green>tbody>tr:hover>td,
		.table-responsive-vertical .table-hover.table-mc-green>tbody>tr:hover
		{
		background-color: #ffffff;
	}
	.table-responsive-vertical .table-hover.table-mc-green>tbody>tr>td:hover
		{
		background-color: #a3e9a4;
	}
}

.table-striped.table-mc-light-green>tbody>tr:nth-child(odd)>td,
	.table-striped.table-mc-light-green>tbody>tr:nth-child(odd)>th {
	background-color: #f1f8e9;
}

.table-hover.table-mc-light-green>tbody>tr:hover>td, .table-hover.table-mc-light-green>tbody>tr:hover>th
	{
	background-color: #dcedc8;
}

@media screen and (max-width: 767px) {
	.table-responsive-vertical .table-striped.table-mc-light-green>tbody>tr>td,
		.table-responsive-vertical .table-striped.table-mc-light-green>tbody>tr:nth-child(odd)
		{
		background-color: #ffffff;
	}
	.table-responsive-vertical .table-striped.table-mc-light-green>tbody>tr>td:nth-child(odd)
		{
		background-color: #f1f8e9;
	}
	.table-responsive-vertical .table-hover.table-mc-light-green>tbody>tr:hover>td,
		.table-responsive-vertical .table-hover.table-mc-light-green>tbody>tr:hover
		{
		background-color: #ffffff;
	}
	.table-responsive-vertical .table-hover.table-mc-light-green>tbody>tr>td:hover
		{
		background-color: #dcedc8;
	}
}

.table-striped.table-mc-lime>tbody>tr:nth-child(odd)>td, .table-striped.table-mc-lime>tbody>tr:nth-child(odd)>th
	{
	background-color: #f9fbe7;
}

.table-hover.table-mc-lime>tbody>tr:hover>td, .table-hover.table-mc-lime>tbody>tr:hover>th
	{
	background-color: #f0f4c3;
}

@media screen and (max-width: 767px) {
	.table-responsive-vertical .table-striped.table-mc-lime>tbody>tr>td,
		.table-responsive-vertical .table-striped.table-mc-lime>tbody>tr:nth-child(odd)
		{
		background-color: #ffffff;
	}
	.table-responsive-vertical .table-striped.table-mc-lime>tbody>tr>td:nth-child(odd)
		{
		background-color: #f9fbe7;
	}
	.table-responsive-vertical .table-hover.table-mc-lime>tbody>tr:hover>td,
		.table-responsive-vertical .table-hover.table-mc-lime>tbody>tr:hover {
		background-color: #ffffff;
	}
	.table-responsive-vertical .table-hover.table-mc-lime>tbody>tr>td:hover
		{
		background-color: #f0f4c3;
	}
}

.table-striped.table-mc-yellow>tbody>tr:nth-child(odd)>td,
	.table-striped.table-mc-yellow>tbody>tr:nth-child(odd)>th {
	background-color: #fffde7;
}

.table-hover.table-mc-yellow>tbody>tr:hover>td, .table-hover.table-mc-yellow>tbody>tr:hover>th
	{
	background-color: #fff9c4;
}

@media screen and (max-width: 767px) {
	.table-responsive-vertical .table-striped.table-mc-yellow>tbody>tr>td,
		.table-responsive-vertical .table-striped.table-mc-yellow>tbody>tr:nth-child(odd)
		{
		background-color: #ffffff;
	}
	.table-responsive-vertical .table-striped.table-mc-yellow>tbody>tr>td:nth-child(odd)
		{
		background-color: #fffde7;
	}
	.table-responsive-vertical .table-hover.table-mc-yellow>tbody>tr:hover>td,
		.table-responsive-vertical .table-hover.table-mc-yellow>tbody>tr:hover
		{
		background-color: #ffffff;
	}
	.table-responsive-vertical .table-hover.table-mc-yellow>tbody>tr>td:hover
		{
		background-color: #fff9c4;
	}
}

.table-striped.table-mc-amber>tbody>tr:nth-child(odd)>td, .table-striped.table-mc-amber>tbody>tr:nth-child(odd)>th
	{
	background-color: #fff8e1;
}

.table-hover.table-mc-amber>tbody>tr:hover>td, .table-hover.table-mc-amber>tbody>tr:hover>th
	{
	background-color: #ffecb3;
}

@media screen and (max-width: 767px) {
	.table-responsive-vertical .table-striped.table-mc-amber>tbody>tr>td,
		.table-responsive-vertical .table-striped.table-mc-amber>tbody>tr:nth-child(odd)
		{
		background-color: #ffffff;
	}
	.table-responsive-vertical .table-striped.table-mc-amber>tbody>tr>td:nth-child(odd)
		{
		background-color: #fff8e1;
	}
	.table-responsive-vertical .table-hover.table-mc-amber>tbody>tr:hover>td,
		.table-responsive-vertical .table-hover.table-mc-amber>tbody>tr:hover
		{
		background-color: #ffffff;
	}
	.table-responsive-vertical .table-hover.table-mc-amber>tbody>tr>td:hover
		{
		background-color: #ffecb3;
	}
}

.table-striped.table-mc-orange>tbody>tr:nth-child(odd)>td,
	.table-striped.table-mc-orange>tbody>tr:nth-child(odd)>th {
	background-color: #fff3e0;
}

.table-hover.table-mc-orange>tbody>tr:hover>td, .table-hover.table-mc-orange>tbody>tr:hover>th
	{
	background-color: #ffe0b2;
}

@media screen and (max-width: 767px) {
	.table-responsive-vertical .table-striped.table-mc-orange>tbody>tr>td,
		.table-responsive-vertical .table-striped.table-mc-orange>tbody>tr:nth-child(odd)
		{
		background-color: #ffffff;
	}
	.table-responsive-vertical .table-striped.table-mc-orange>tbody>tr>td:nth-child(odd)
		{
		background-color: #fff3e0;
	}
	.table-responsive-vertical .table-hover.table-mc-orange>tbody>tr:hover>td,
		.table-responsive-vertical .table-hover.table-mc-orange>tbody>tr:hover
		{
		background-color: #ffffff;
	}
	.table-responsive-vertical .table-hover.table-mc-orange>tbody>tr>td:hover
		{
		background-color: #ffe0b2;
	}
}

.table-striped.table-mc-deep-orange>tbody>tr:nth-child(odd)>td,
	.table-striped.table-mc-deep-orange>tbody>tr:nth-child(odd)>th {
	background-color: #fbe9e7;
}

.table-hover.table-mc-deep-orange>tbody>tr:hover>td, .table-hover.table-mc-deep-orange>tbody>tr:hover>th
	{
	background-color: #ffccbc;
}

@media screen and (max-width: 767px) {
	.table-responsive-vertical .table-striped.table-mc-deep-orange>tbody>tr>td,
		.table-responsive-vertical .table-striped.table-mc-deep-orange>tbody>tr:nth-child(odd)
		{
		background-color: #ffffff;
	}
	.table-responsive-vertical .table-striped.table-mc-deep-orange>tbody>tr>td:nth-child(odd)
		{
		background-color: #fbe9e7;
	}
	.table-responsive-vertical .table-hover.table-mc-deep-orange>tbody>tr:hover>td,
		.table-responsive-vertical .table-hover.table-mc-deep-orange>tbody>tr:hover
		{
		background-color: #ffffff;
	}
	.table-responsive-vertical .table-hover.table-mc-deep-orange>tbody>tr>td:hover
		{
		background-color: #ffccbc;
	}
}

.material-icons {
	margin-left: -4px;
	font-size: 16px;
}

.btn-primary{
	background-color: #007bff;
}

.btn.edit, .btn.delete {
	width: 30.0px;
	height: 30.0px;
	border-radius: 50%;
    border-color: powderblue;
}

button#mymodal {
	margin-top: -40px;
}

.col-md-offset-1 {
	margin-left: -1.666667%;
}

.panel-default>.panel-heading {
	color: #333;
	background-color: #fff;
	border-color: #ddd;
}

.panel-title {
	margin-top: 5px;
}

.panel {
	margin-bottom: 0px;
	padding-top: 5px;
}

.col-md-10 {
	width: 103.333333%;
}
</style>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css"
	rel="stylesheet">
</head>
<body id="top">
	<div class="container">
	<%@ include file = "Menu.jsp" %>
	</div>
	<br><br>
	<div class="container">
		<!-- <h2>User List</h2>
		<button type="button" id="mymodal" class="btn btn-primary pull-right"
			data-toggle="modal" data-target="#myModal">Create User</button>
		<hr>
		 -->
		<div class="col-md-10 col-md-offset-1">

			<div class="panel panel-default panel-table">
				<div class="panel-heading">
					<div class="row">
						<div class="col col-xs-6">
							<h3 class="panel-title">User List</h3>
						</div>
						<div class="col col-xs-6 text-right">
							<button type="button" data-toggle="modal" data-target="#myModal"
								class="btn btn-sm btn-primary btn-create">Create New
								User</button>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div id="demo">
			<div class="table-responsive-vertical shadow-z-1">
				<table id="table"
					class="table table-hover table-mc-light-blue table-bordered">
					<thead>
						<tr>
							<th>ID</th>
							<th>First Name</th>
							<th>Last Name</th>
							<th>Edit</th>
							<th>Delete</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="col" items="${Users}">
							<tr>
								<td data-title="ID">${col.id}</td>
								<td data-title="FirstName">${col.firstName}</td>
								<td data-title="LastName">${col.lastName}</td>
								<td data-title="Edit"><button class="btn btn-primary edit"
										id="edit">
										<i class="material-icons" style="color: white">create</i>
									</button></td>
								<td data-title="Delete"><button
										class="btn btn-sm btn-primary delete" id="delete">
										<i class="material-icons" style="color: white">delete</i>
									</button></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>

		</div>
		<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">
							<span aria-hidden="true" class="">× </span><span class="sr-only">Close</span>
						</button>
						<h4 class="modal-title" id="myModalLabel">User Details</h4>
					</div>
					<form name='userForm' action="/userupdate" method='POST'>
						<div class="modal-body">

							<div class="form-inline">
								<input id="id" name="id" class="form-control" type="hidden" />
							</div>
							<br>
							<div class="form-inline">
								<label>First Name:</label> <input id="firstName"
									class="form-control" autofocus name="firstName" type="text" />
							</div>
							<br>
							<div class="form-inline">
								<label>Last Name:</label> <input id="lastName"
									class="form-control" autofocus name="lastName" type="text" />
							</div>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-default"
								data-dismiss="modal">Close</button>
							<button type="submit" class="btn btn-primary">Save
								changes</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		$(".edit").click(function() {
			var currentRow = $(this).closest("tr");

			var col1 = currentRow.find("td:eq(0)").text();
			var col2 = currentRow.find("td:eq(1)").text();
			var col3 = currentRow.find("td:eq(2)").text();
			var data = col1 + "\n" + col2 + "\n" + col3;
			console.log("data : " + data);

			$("#id").val(col1);
			$("#firstName").val(col2);
			$("#lastName").val(col3);
			$('#myModal').modal('show');

		});

		$(".delete").click(function() {
			var currentRow = $(this).closest("tr");

			var col1 = currentRow.find("td:eq(0)").text();
			console.log("Delete Id : " + col1);
			location.href = "/userdelete/" + col1;
		});
	</script>
</body>
</html>